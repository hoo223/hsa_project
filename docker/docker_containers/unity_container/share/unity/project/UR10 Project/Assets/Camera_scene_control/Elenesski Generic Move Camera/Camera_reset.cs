using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Camera_reset : MonoBehaviour
{
    private Vector3 startPosition;
   
    // Start is called before the first frame update
    void Start()
    {
        startPosition = transform.position;
    }

    // Update is called once per frame
    void Update()
    {
        if (Input.GetKey(KeyCode.R))
        {
            InitPosition2();
        }
    }
    void InitPosition2()
    {
        transform.position = startPosition;
        transform.rotation = Quaternion.identity;


    }
}
