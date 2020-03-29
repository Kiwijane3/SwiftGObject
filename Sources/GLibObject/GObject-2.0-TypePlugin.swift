import CGLib
import GLib

// MARK: - TypePlugin Interface

/// The `TypePluginProtocol` protocol exposes the methods and properties of an underlying `GTypePlugin` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TypePlugin`.
/// Alternatively, use `TypePluginRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The GObject type system supports dynamic loading of types.
/// The `GTypePlugin` interface is used to handle the lifecycle
/// of dynamically loaded types. It goes as follows:
/// 
/// 1. The type is initially introduced (usually upon loading the module
///    the first time, or by your main application that knows what modules
///    introduces what types), like this:
///    
/// (C Language Example):
/// ```C
///    new_type_id = g_type_register_dynamic (parent_type_id,
///                                           "TypeName",
///                                           new_type_plugin,
///                                           type_flags);
///    
/// ```
///    where `new_type_plugin` is an implementation of the
///    `GTypePlugin` interface.
/// 
/// 2. The type's implementation is referenced, e.g. through
///    `g_type_class_ref()` or through `g_type_create_instance()` (this is
///    being called by `g_object_new()`) or through one of the above done on
///    a type derived from `new_type_id`.
/// 
/// 3. This causes the type system to load the type's implementation by
///    calling `g_type_plugin_use()` and `g_type_plugin_complete_type_info()`
///    on `new_type_plugin`.
/// 
/// 4. At some point the type's implementation isn't required anymore,
///    e.g. after `g_type_class_unref()` or `g_type_free_instance()` (called
///    when the reference count of an instance drops to zero).
/// 
/// 5. This causes the type system to throw away the information retrieved
///    from `g_type_plugin_complete_type_info()` and then it calls
///    `g_type_plugin_unuse()` on `new_type_plugin`.
/// 
/// 6. Things may repeat from the second step.
/// 
/// So basically, you need to implement a `GTypePlugin` type that
/// carries a use_count, once use_count goes from zero to one, you need
/// to load the implementation to successfully handle the upcoming
/// `g_type_plugin_complete_type_info()` call. Later, maybe after
/// succeeding use/unuse calls, once use_count drops to zero, you can
/// unload the implementation again. The type system makes sure to call
/// `g_type_plugin_use()` and `g_type_plugin_complete_type_info()` again
/// when the type is needed again.
/// 
/// `GTypeModule` is an implementation of `GTypePlugin` that already
/// implements most of this except for the actual module loading and
/// unloading. It even handles multiple registered types per module.
public protocol TypePluginProtocol {
    /// Untyped pointer to the underlying `GTypePlugin` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GTypePlugin` instance.
    var type_plugin_ptr: UnsafeMutablePointer<GTypePlugin> { get }
}

/// The `TypePluginRef` type acts as a lightweight Swift reference to an underlying `GTypePlugin` instance.
/// It exposes methods that can operate on this data type through `TypePluginProtocol` conformance.
/// Use `TypePluginRef` only as an `unowned` reference to an existing `GTypePlugin` instance.
///
/// The GObject type system supports dynamic loading of types.
/// The `GTypePlugin` interface is used to handle the lifecycle
/// of dynamically loaded types. It goes as follows:
/// 
/// 1. The type is initially introduced (usually upon loading the module
///    the first time, or by your main application that knows what modules
///    introduces what types), like this:
///    
/// (C Language Example):
/// ```C
///    new_type_id = g_type_register_dynamic (parent_type_id,
///                                           "TypeName",
///                                           new_type_plugin,
///                                           type_flags);
///    
/// ```
///    where `new_type_plugin` is an implementation of the
///    `GTypePlugin` interface.
/// 
/// 2. The type's implementation is referenced, e.g. through
///    `g_type_class_ref()` or through `g_type_create_instance()` (this is
///    being called by `g_object_new()`) or through one of the above done on
///    a type derived from `new_type_id`.
/// 
/// 3. This causes the type system to load the type's implementation by
///    calling `g_type_plugin_use()` and `g_type_plugin_complete_type_info()`
///    on `new_type_plugin`.
/// 
/// 4. At some point the type's implementation isn't required anymore,
///    e.g. after `g_type_class_unref()` or `g_type_free_instance()` (called
///    when the reference count of an instance drops to zero).
/// 
/// 5. This causes the type system to throw away the information retrieved
///    from `g_type_plugin_complete_type_info()` and then it calls
///    `g_type_plugin_unuse()` on `new_type_plugin`.
/// 
/// 6. Things may repeat from the second step.
/// 
/// So basically, you need to implement a `GTypePlugin` type that
/// carries a use_count, once use_count goes from zero to one, you need
/// to load the implementation to successfully handle the upcoming
/// `g_type_plugin_complete_type_info()` call. Later, maybe after
/// succeeding use/unuse calls, once use_count drops to zero, you can
/// unload the implementation again. The type system makes sure to call
/// `g_type_plugin_use()` and `g_type_plugin_complete_type_info()` again
/// when the type is needed again.
/// 
/// `GTypeModule` is an implementation of `GTypePlugin` that already
/// implements most of this except for the actual module loading and
/// unloading. It even handles multiple registered types per module.
public struct TypePluginRef: TypePluginProtocol {
    /// Untyped pointer to the underlying `GTypePlugin` instance.
    /// For type-safe access, use the generated, typed pointer `type_plugin_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension TypePluginRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GTypePlugin>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `TypePluginProtocol`
    init<T: TypePluginProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypePluginProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypePluginProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypePluginProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypePluginProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypePluginProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `TypePlugin` type acts as an owner of an underlying `GTypePlugin` instance.
/// It provides the methods that can operate on this data type through `TypePluginProtocol` conformance.
/// Use `TypePlugin` as a strong reference or owner of a `GTypePlugin` instance.
///
/// The GObject type system supports dynamic loading of types.
/// The `GTypePlugin` interface is used to handle the lifecycle
/// of dynamically loaded types. It goes as follows:
/// 
/// 1. The type is initially introduced (usually upon loading the module
///    the first time, or by your main application that knows what modules
///    introduces what types), like this:
///    
/// (C Language Example):
/// ```C
///    new_type_id = g_type_register_dynamic (parent_type_id,
///                                           "TypeName",
///                                           new_type_plugin,
///                                           type_flags);
///    
/// ```
///    where `new_type_plugin` is an implementation of the
///    `GTypePlugin` interface.
/// 
/// 2. The type's implementation is referenced, e.g. through
///    `g_type_class_ref()` or through `g_type_create_instance()` (this is
///    being called by `g_object_new()`) or through one of the above done on
///    a type derived from `new_type_id`.
/// 
/// 3. This causes the type system to load the type's implementation by
///    calling `g_type_plugin_use()` and `g_type_plugin_complete_type_info()`
///    on `new_type_plugin`.
/// 
/// 4. At some point the type's implementation isn't required anymore,
///    e.g. after `g_type_class_unref()` or `g_type_free_instance()` (called
///    when the reference count of an instance drops to zero).
/// 
/// 5. This causes the type system to throw away the information retrieved
///    from `g_type_plugin_complete_type_info()` and then it calls
///    `g_type_plugin_unuse()` on `new_type_plugin`.
/// 
/// 6. Things may repeat from the second step.
/// 
/// So basically, you need to implement a `GTypePlugin` type that
/// carries a use_count, once use_count goes from zero to one, you need
/// to load the implementation to successfully handle the upcoming
/// `g_type_plugin_complete_type_info()` call. Later, maybe after
/// succeeding use/unuse calls, once use_count drops to zero, you can
/// unload the implementation again. The type system makes sure to call
/// `g_type_plugin_use()` and `g_type_plugin_complete_type_info()` again
/// when the type is needed again.
/// 
/// `GTypeModule` is an implementation of `GTypePlugin` that already
/// implements most of this except for the actual module loading and
/// unloading. It even handles multiple registered types per module.
open class TypePlugin: TypePluginProtocol {
    /// Untyped pointer to the underlying `GTypePlugin` instance.
    /// For type-safe access, use the generated, typed pointer `type_plugin_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `TypePlugin` instance.
    public init(_ op: UnsafeMutablePointer<GTypePlugin>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `TypePluginProtocol`
    /// `GTypePlugin` does not allow reference counting.
    public convenience init<T: TypePluginProtocol>(_ other: T) {
        self.init(cast(other.type_plugin_ptr))
        // no reference counting for GTypePlugin, cannot ref(cast(type_plugin_ptr))
    }

    /// Do-nothing destructor for`GTypePlugin`.
    deinit {
        // no reference counting for GTypePlugin, cannot unref(cast(type_plugin_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypePluginProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GTypePlugin.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypePluginProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GTypePlugin.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypePluginProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GTypePlugin.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypePluginProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GTypePlugin>(opaquePointer))
    }



}

// MARK: - no TypePlugin properties

// MARK: - no signals


public extension TypePluginProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GTypePlugin` instance.
    var type_plugin_ptr: UnsafeMutablePointer<GTypePlugin> { return ptr.assumingMemoryBound(to: GTypePlugin.self) }

    /// Calls the `complete_interface_info` function from the
    /// `GTypePluginClass` of `plugin`. There should be no need to use this
    /// function outside of the GObject type system itself.
    func completeInterfaceInfo(instanceType instance_type: GType, interfaceType interface_type: GType, info: InterfaceInfoProtocol) {
        g_type_plugin_complete_interface_info(cast(type_plugin_ptr), instance_type, interface_type, cast(info.ptr))
    
    }

    /// Calls the `complete_type_info` function from the `GTypePluginClass` of `plugin`.
    /// There should be no need to use this function outside of the GObject
    /// type system itself.
    func completeTypeInfo(gType g_type: GType, info: TypeInfoProtocol, valueTable value_table: TypeValueTableProtocol) {
        g_type_plugin_complete_type_info(cast(type_plugin_ptr), g_type, cast(info.ptr), cast(value_table.ptr))
    
    }

    /// Calls the `unuse_plugin` function from the `GTypePluginClass` of
    /// `plugin`.  There should be no need to use this function outside of
    /// the GObject type system itself.
    func unuse() {
        g_type_plugin_unuse(cast(type_plugin_ptr))
    
    }

    /// Calls the `use_plugin` function from the `GTypePluginClass` of
    /// `plugin`.  There should be no need to use this function outside of
    /// the GObject type system itself.
    func use() {
        g_type_plugin_use(cast(type_plugin_ptr))
    
    }

    /// Adds the dynamic `interface_type` to `instantiable_type`. The information
    /// contained in the `GTypePlugin` structure pointed to by `plugin`
    /// is used to manage the relationship.
    func typeAddInterfaceDynamic(instanceType instance_type: GType, interfaceType interface_type: GType) {
        g_type_add_interface_dynamic(instance_type, interface_type, cast(type_plugin_ptr))
    
    }

    /// Registers `type_name` as the name of a new dynamic type derived from
    /// `parent_type`.  The type system uses the information contained in the
    /// `GTypePlugin` structure pointed to by `plugin` to manage the type and its
    /// instances (if not abstract).  The value of `flags` determines the nature
    /// (e.g. abstract or not) of the type.
    func typeRegisterDynamic(parentType parent_type: GType, typeName type_name: UnsafePointer<gchar>, flags: TypeFlags) -> GType {
        let rv = g_type_register_dynamic(parent_type, type_name, cast(type_plugin_ptr), flags)
        return rv
    }
}


