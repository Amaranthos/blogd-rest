module blogd.data.repositories.irepository;

interface IRepository(T) {
	T[] get();
	T get(long id);
	void put(T obj);
	void post(T obj);
	void remove(T obj);
}
