import 'package:flutter_bloc/flutter_bloc.dart';
import '../models/product_model.dart';

class CartState {
  final Map<ProductModel, int> items;
  CartState(this.items);

  CartState copyWith({Map<ProductModel, int>? items}) {
    return CartState(items ?? this.items);
  }
}

class CartCubit extends Cubit<CartState> {
  CartCubit() : super(CartState({}));

  void addToCart(ProductModel product) {
    final updated = Map<ProductModel, int>.from(state.items);
    updated[product] = (updated[product] ?? 0) + 1;
    emit(CartState(updated));
  }

  void removeFromCart(ProductModel product) {
    final updated = Map<ProductModel, int>.from(state.items);
    updated.remove(product);
    emit(CartState(updated));
  }

  void updateQuantity(ProductModel product, int qty) {
    final updated = Map<ProductModel, int>.from(state.items);

    if (qty <= 0) {
      updated.remove(product);
    } else {
      updated[product] = qty;
    }

    emit(CartState(updated));
  }

  int getTotalItems() {
    int total = 0;
    state.items.forEach((p, qty) => total += qty);
    return total;
  }

  int getTotalPrice() {
    int total = 0;
    state.items.forEach((p, qty) => total += p.price * qty);
    return total;
  }

  void clearCart() {
    emit(CartState({}));
  }
}
