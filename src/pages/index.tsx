import { 
  MarketingFooter,
  NavBar,
  NewHomes 
} from '../ui-components';

export default function Home() {
  return (
    <>
      <NavBar width={"100vw"}/>
      <NewHomes /> {/* itemsを渡す事もできる */}
      <MarketingFooter width={"100vw"} marginTop={"16px"}/>
    </>
  )
}
