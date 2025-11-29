import Link from 'next/link';

export default function Navbar() {
  return (
    <nav className="bg-blue-900 text-white shadow-lg sticky top-0 z-50">
      <div className="container mx-auto px-4">
        <div className="flex items-center justify-between h-16">
          <Link href="/" className="flex items-center space-x-2 hover:opacity-80 transition">
            <span className="text-xl font-bold">Constitución Española 1978</span>
          </Link>
        </div>
      </div>
    </nav>
  );
}
