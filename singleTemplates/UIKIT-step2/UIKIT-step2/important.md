# Concepts

### Image Picker Controller
```
@IBAction func experiment(_ sender: Any) {

let nextController = UIImagePickerController()
self.present(nextController, animated: true, completion: nil)
}
```

### Activity View Controller
```
@IBAction func experiment(_ sender: Any) {

let image = UIImage()
let controller = UIActivityViewController(activityItems: [image], applicationActivities: nil)
self.present(controller, animated: true, completion: nil)
}
```

### Alert View Controller
```
@IBAction func experiment(_ sender: Any) {

let controller = UIAlertController()

controller.title = "This is an ALERT!!!"
controller.message = "This is a test..."

controller.addAction(UIAlertAction(title: "ok", style: UIAlertActionStyle.default, handler: { (alert:UIAlertAction!) in print("Ok button tapped")
}))
present(controller, animated: true, completion: nil)
}
```

