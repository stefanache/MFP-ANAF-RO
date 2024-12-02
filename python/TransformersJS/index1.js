import { pipeline } from "https://cdn.jsdelivr.net/npm/@xenova/transformers@2.8.0";

// Reference the elements that we will need
const status = document.getElementById("status");
const image = document.getElementById("image");
const detectObjectsButton = document.getElementById('detect-objects')
const imageContainer = document.getElementById('image-container')
const input = document.querySelector('#img-file')


input.addEventListener('change', (e) => {
  image.src = URL.createObjectURL(e.target.files[0])

  if(imageContainer.children.length > 1) {
    const children = imageContainer.querySelectorAll('.bounding-box')
    children.forEach(el => imageContainer.removeChild(el))
    
  }
})

status.textContent = "Loading model...";
const detector = await pipeline("object-detection", "Xenova/yolos-tiny");

// Enable Object Detection
detectObjectsButton.addEventListener("click", detectAndDrawObjects);
detectObjectsButton.disabled = false;
status.textContent = "Ready";

// Load model and create a new object detection pipeline

async function detectAndDrawObjects() {
 
  status.textContent = "Detecting Objects...";
  const detectedObjet = await detector(image.src, {
    threshold: 0.5,
    percentage: true,
  });

  status.textContent = 'Drawing...'
  detectedObjet.forEach((object) => {
      drawObjectBox(object)
  });

  status.textContent = "Done!";
}

function drawObjectBox(detectedObject) {
  const { label, score, box } = detectedObject
  const { xmax, xmin, ymax, ymin } = box

  // Generate a random color for the box
  const color = '#' + Math.floor(Math.random() * 0xFFFFFF).toString(16).padStart(6, 0)
  
  // Draw the box
  const boxElement = document.createElement('div')
  boxElement.className = 'bounding-box'
  Object.assign(boxElement.style, {
      borderColor: color,
      left: 100 * xmin + '%',
      top: 100 * ymin + '%',
      width: 100 * (xmax - xmin) + '%',
      height: 100 * (ymax - ymin) + '%',
  })

  // Draw label
  const labelElement = document.createElement('span')
  labelElement.textContent = `${label}: ${Math.floor(score * 100)}%`
  labelElement.className = 'bounding-box-label'
  labelElement.style.backgroundColor = color

  boxElement.appendChild(labelElement)
  imageContainer.appendChild(boxElement)
}