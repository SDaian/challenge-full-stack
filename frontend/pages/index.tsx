import Head from 'next/head';
import Results from '@/components/Results';

export default function Home() {
  return (
    <div>
      <Head>
        <title>Challenge Solution</title>
        <meta
          name="description"
          content="Challenge solution RoR Api + Next.js"
        />
        <link rel="icon" href="/favicon.ico" />
      </Head>
      <main>
        <Results />
      </main>
    </div>
  );
}
