module.exports = async (params) => {
    const { app } = params;
    
    // Safely get the active text editor using Obsidian's API
    const activeEditor = app.workspace.activeEditor;
    if (!activeEditor || !activeEditor.editor) {
        new Notice("No active note found!");
        return;
    }

    const editor = activeEditor.editor;
    const cursor = editor.getCursor();
    const lineNum = cursor.line;
    const lineContent = editor.getLine(lineNum);

    // Define your custom tags here
    const topTag = "$$";
    const bottomTag = "$$";

    // Replace the current line with the top tag, original line, and bottom tag
    const newText = `${topTag}\n${lineContent}\n${bottomTag}`;
    
    editor.setLine(lineNum, newText);
    
    // Move the cursor back to the exact line text position
    editor.setCursor({ line: lineNum + 1 , ch: cursor.ch });
};
