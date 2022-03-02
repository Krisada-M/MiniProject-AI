import "./App.css";
import { useEffect, useState } from "react";
import "bootstrap/dist/css/bootstrap.min.css";
import Form from "react-bootstrap/Form";

const App = () => {
  const [disease, setdisease] = useState({});
  const [Symp1, setSymp1] = useState([]);
  const [Symp2, setSymp2] = useState([]);
  const [Symp3, setSymp3] = useState([]);
  const [Symp4, setSymp4] = useState([]);
  const [Symp5, setSymp5] = useState([]);
  const [error, seterror] = useState("No error");
  const [op1, setOp1] = useState(12);
  const [op2, setOp2] = useState(13);
  const [op3, setOp3] = useState(20);
  const [op4, setOp4] = useState(22);
  const [op5, setOp5] = useState(16);

  const diseaseP = JSON.parse(JSON.stringify(disease));

  async function fetchdata() {
    console.log(error);
    const res = await fetch("http://127.0.0.1:5000/fetchdata", {
      method: "GET",
      headers: {
        "Content-Type": "application/json"
      }
    });
    res
      .json()
      .then(resp => {
        setSymp1(resp[0]);
        setSymp2(resp[1]);
        setSymp3(resp[2]);
        setSymp4(resp[3]);
        setSymp5(resp[4]);
      })
      .catch(err => seterror(err));
  }
  useEffect(() => {
    fetchdata();
  }, []);

  const fetchRP = async () => {
    const res2 = await fetch("http://127.0.0.1:5000/fetchRP", {
      method: "POST",
      headers: {
        "Content-Type": "application/json"
      },
      body: JSON.stringify([
        {
          A: op1,
          B: op2,
          C: op3,
          D: op4,
          E: op5
        }
      ])
    });
    res2.json().then(resp => setdisease(resp));
  };
  return (
    <div className="body">
      <div className="bg" />
      <div className="bgf" />
      <div className="App">
        <h1>Mini Project Artificial Intelligence</h1>
        <h2>Diagnostic system</h2>
        <br />
        <p className="disease">คุณมีอาการอย่างไรบ้าง</p>
        <div className="sede">
          <p className="head">ฉันมีอาการ</p>
          <div className="select">
            <Form.Select
              style={{ margin: 10 }}
              size="sm"
              onChange={e => {
                setOp1(e.target.value);
              }}
            >
              <option defaultValue hidden>
                เลือกอาการ
              </option>
              {Symp1.map(item =>
                <option key={item.id} value={item.id}>
                  {item.Symptom1}
                </option>
              )}
            </Form.Select>
            <Form.Select
              style={{ margin: 10 }}
              size="sm"
              onChange={e => {
                setOp2(e.target.value);
              }}
            >
              <option defaultValue hidden>
                เลือกอาการ
              </option>
              {Symp2.map(item =>
                <option key={item.id} value={item.id}>
                  {item.Symptom2}
                </option>
              )}
            </Form.Select>
            <Form.Select
              style={{ margin: 10 }}
              size="sm"
              onChange={e => {
                setOp3(e.target.value);
              }}
            >
              <option defaultValue hidden>
                เลือกอาการ
              </option>
              {Symp3.map(item =>
                <option key={item.id} value={item.id}>
                  {item.Symptom3}
                </option>
              )}
            </Form.Select>
            <Form.Select
              style={{ margin: 10 }}
              size="sm"
              onChange={e => {
                setOp4(e.target.value);
              }}
            >
              <option defaultValue hidden>
                เลือกอาการ
              </option>
              {Symp4.map(item =>
                <option key={item.id} value={item.id}>
                  {item.Symptom4}
                </option>
              )}
            </Form.Select>
            <Form.Select
              style={{ margin: 10 }}
              size="sm"
              onChange={e => {
                setOp5(e.target.value);
              }}
            >
              <option defaultValue hidden>
                เลือกอาการ
              </option>
              {Symp5.map(item =>
                <option key={item.id} value={item.id}>
                  {item.Symptom5}
                </option>
              )}
            </Form.Select>
            <br />
          </div>
        </div>
        <button
          className="button-68"
          style={{ marginTop: 70 }}
          onClick={fetchRP}
        >
          วินิฉัย
        </button>
        <p className="result">
          จากการวินิจฉัยคุณมีโอกาสเป็นโรค
          <span style={{ color: "red" }}> {diseaseP.Disease}</span>
        </p>
      </div>
    </div>
  );
};
export default App;
