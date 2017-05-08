module blogd.data.repositories.ipostrepository;

import blogd.data.models.post : Post;
import blogd.data.repositories.irepository : IRepository;

interface IPostRepository : IRepository!Post {}
