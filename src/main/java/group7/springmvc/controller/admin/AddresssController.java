package group7.springmvc.controller.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.PathVariable;

import group7.springmvc.model.Address;
import group7.springmvc.service.AddressService;

@Controller
@RequestMapping("/admin/QLchinhanh")
public class AddresssController {
    
    @Autowired
    private AddressService addressService;

    @GetMapping("")
    public String listAddresses(@RequestParam(required = false) String id, Model model) {
        if (id != null && !id.isEmpty()) {
            Address address = addressService.searchAddressById(id);
            model.addAttribute("listAddress", List.of(address)); // Chỉ hiển thị địa chỉ tìm được
        } else {
            model.addAttribute("listAddress", addressService.getAllAddress()); // Hiển thị tất cả nếu không có ID
        }
        return "admin/address/index";
    }

    @GetMapping("/edit/{id}")
    public String editAddress(@PathVariable("id") String addressId, Model model) {
        Address address = addressService.searchAddressById(addressId);
        model.addAttribute("address", address);
        return "admin/address/edit"; // Tên view cho biểu mẫu chỉnh sửa
    }

    @PostMapping("/edit/{id}")
    public String updateAddress(Address address) {
        addressService.updateAddress(address); // Phương thức cập nhật trong service
        return "redirect:/admin/QLchinhanh"; // Quay lại danh sách sau khi cập nhật
    }
}
