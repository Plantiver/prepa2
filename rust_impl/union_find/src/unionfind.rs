pub struct Node {
    pub parent: Option<usize>,
    pub rank: usize,
}

pub struct UnionFindImpl {
    partition: Box<[Node]>,
}

pub trait UnionFind {
    fn init(n: usize) -> Self;
    fn trouver(&self, i: usize) -> usize;
    fn unir(&mut self, i: usize, j: usize);
}

impl UnionFind for UnionFindImpl {
    fn init(n: usize) -> Self {
        Self {
            partition: {
                let r = (0..n)
                    .map(|i| Node {
                        parent: None,
                        rank: 0,
                    })
                    .collect();
                Box::from(r)
            },
        }
    }
    fn trouver(&self, i: usize) -> usize {
        i
    }
    fn unir(&mut self, i: usize, j: usize) {
        let i = self.trouver(i);
        let j = self.trouver(j);
        if self.partition[i].rank < self.partition[j].rank {
            self.partition[j] = Node {
                parent: Some(i),
                rank: self.partition[j].rank,
            };
        } else {
            self.partition[i] = Node {
                parent: Some(j),
                rank: max(self.partition[i].rank, self.partition[j].rank + 1),
            }
        }
    }
}

pub fn max(a: usize, b: usize) -> usize {
    if a < b { b } else { a }
}
