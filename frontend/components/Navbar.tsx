import Link from 'next/link';

const Navbar = () => {
  return (
    <header className="h-16 bg-[#042541] flex justify-center items-center">
      <nav className="w-full flex items-center justify-between px-8 max-w-6xl mx-auto">
        <div>
          <Link href={'/'}>
            <small className="text-3xl text-white font-bold">Challenge</small>
          </Link>
        </div>
      </nav>
    </header>
  );
};

export default Navbar;
