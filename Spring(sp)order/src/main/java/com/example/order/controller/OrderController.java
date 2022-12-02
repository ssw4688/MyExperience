package com.example.order.controller;

import com.example.order.domain.vo.ItemVO;
import com.example.order.domain.vo.OrderDTO;
import com.example.order.domain.vo.OrderVO;
import com.example.order.service.OrderSerive;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.view.RedirectView;

import java.util.List;

@Controller
@RequiredArgsConstructor
@RequestMapping("/order/*")
@Slf4j
public class OrderController {
    private final OrderSerive orderSerive;

//    결제
    @PostMapping("add")
    public RedirectView add(OrderVO order){
        orderSerive.addOrder(order.getOrders());
        return new RedirectView("/order/list");
    }

//    취소
    @PostMapping("cancel")
    public RedirectView cancel(@RequestParam("orderId") List<String> orderIds){
        orderIds.forEach(orderId -> orderSerive.cancel(orderId));
        return new RedirectView("/item/list");
    }

//    전체 조회
    @GetMapping("list")
    public void list(Model model){
        model.addAttribute("orders", orderSerive.showAll());
    }

//    상품명으로 주문 개수 조회
    @GetMapping("search")
    public String search(@ModelAttribute("itemName") String itemName, Model model){
        model.addAttribute("total", orderSerive.show(itemName).stream().map(order -> order.getItemCount()).reduce(0, (count1, count2) -> count1 + count2));
        return "/order/result";
    }
}
















