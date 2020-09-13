import CGLib
import GLib
import GObjectCHelpers

// MARK: - ParamSpecTypeInfo Record

/// The `ParamSpecTypeInfoProtocol` protocol exposes the methods and properties of an underlying `GParamSpecTypeInfo` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ParamSpecTypeInfo`.
/// Alternatively, use `ParamSpecTypeInfoRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// This structure is used to provide the type system with the information
/// required to initialize and destruct (finalize) a parameter's class and
/// instances thereof.
/// The initialized structure is passed to the `g_param_type_register_static()`
/// The type system will perform a deep copy of this structure, so its memory
/// does not need to be persistent across invocation of
/// `g_param_type_register_static()`.
public protocol ParamSpecTypeInfoProtocol {
        /// Untyped pointer to the underlying `GParamSpecTypeInfo` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GParamSpecTypeInfo` instance.
    var _ptr: UnsafeMutablePointer<GParamSpecTypeInfo>! { get }

}

/// The `ParamSpecTypeInfoRef` type acts as a lightweight Swift reference to an underlying `GParamSpecTypeInfo` instance.
/// It exposes methods that can operate on this data type through `ParamSpecTypeInfoProtocol` conformance.
/// Use `ParamSpecTypeInfoRef` only as an `unowned` reference to an existing `GParamSpecTypeInfo` instance.
///
/// This structure is used to provide the type system with the information
/// required to initialize and destruct (finalize) a parameter's class and
/// instances thereof.
/// The initialized structure is passed to the `g_param_type_register_static()`
/// The type system will perform a deep copy of this structure, so its memory
/// does not need to be persistent across invocation of
/// `g_param_type_register_static()`.
public struct ParamSpecTypeInfoRef: ParamSpecTypeInfoProtocol {
        /// Untyped pointer to the underlying `GParamSpecTypeInfo` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ParamSpecTypeInfoRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GParamSpecTypeInfo>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GParamSpecTypeInfo>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GParamSpecTypeInfo>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GParamSpecTypeInfo>?) {
        guard let p = UnsafeMutablePointer(mutating: maybePointer) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional `gpointer`
    @inlinable init!(gpointer g: gpointer?) {
        guard let p = g else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable `gconstpointer`
    @inlinable init!(gconstpointer g: gconstpointer?) {
        guard let p = UnsafeMutableRawPointer(mutating: g) else { return nil }
        ptr = p
    }

    /// Reference intialiser for a related type that implements `ParamSpecTypeInfoProtocol`
    @inlinable init<T: ParamSpecTypeInfoProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecTypeInfoProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecTypeInfoProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecTypeInfoProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecTypeInfoProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecTypeInfoProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ParamSpecTypeInfo` type acts as an owner of an underlying `GParamSpecTypeInfo` instance.
/// It provides the methods that can operate on this data type through `ParamSpecTypeInfoProtocol` conformance.
/// Use `ParamSpecTypeInfo` as a strong reference or owner of a `GParamSpecTypeInfo` instance.
///
/// This structure is used to provide the type system with the information
/// required to initialize and destruct (finalize) a parameter's class and
/// instances thereof.
/// The initialized structure is passed to the `g_param_type_register_static()`
/// The type system will perform a deep copy of this structure, so its memory
/// does not need to be persistent across invocation of
/// `g_param_type_register_static()`.
open class ParamSpecTypeInfo: ParamSpecTypeInfoProtocol {
        /// Untyped pointer to the underlying `GParamSpecTypeInfo` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecTypeInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GParamSpecTypeInfo>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecTypeInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GParamSpecTypeInfo>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecTypeInfo` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecTypeInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecTypeInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GParamSpecTypeInfo>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecTypeInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GParamSpecTypeInfo>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GParamSpecTypeInfo` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `ParamSpecTypeInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GParamSpecTypeInfo>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GParamSpecTypeInfo, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `ParamSpecTypeInfoProtocol`
    /// `GParamSpecTypeInfo` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `ParamSpecTypeInfoProtocol`
    @inlinable public init<T: ParamSpecTypeInfoProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GParamSpecTypeInfo, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GParamSpecTypeInfo`.
    deinit {
        // no reference counting for GParamSpecTypeInfo, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecTypeInfoProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecTypeInfoProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GParamSpecTypeInfo, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecTypeInfoProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecTypeInfoProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GParamSpecTypeInfo, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecTypeInfoProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecTypeInfoProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GParamSpecTypeInfo, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecTypeInfoProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecTypeInfoProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GParamSpecTypeInfo, cannot ref(_ptr)
    }



}

// MARK: no ParamSpecTypeInfo properties

// MARK: no ParamSpecTypeInfo signals


// MARK: ParamSpecTypeInfo Record: ParamSpecTypeInfoProtocol extension (methods and fields)
public extension ParamSpecTypeInfoProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GParamSpecTypeInfo` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GParamSpecTypeInfo>! { return ptr?.assumingMemoryBound(to: GParamSpecTypeInfo.self) }

    /// Registers `name` as the name of a new static type derived from
    /// `G_TYPE_PARAM`. The type system uses the information contained in
    /// the `GParamSpecTypeInfo` structure pointed to by `info` to manage the
    /// `GParamSpec` type and its instances.
    @inlinable func paramTypeRegisterStatic(name: UnsafePointer<gchar>!) -> GType {
        let rv = g_param_type_register_static(name, _ptr)
        return rv
    }

    /// Size of the instance (object) structure.
    @inlinable var instanceSize: guint16 {
        /// Size of the instance (object) structure.
        get {
            let rv = _ptr.pointee.instance_size
            return rv
        }
        /// Size of the instance (object) structure.
         set {
            _ptr.pointee.instance_size = newValue
        }
    }

    /// Prior to GLib 2.10, it specified the number of pre-allocated (cached) instances to reserve memory for (0 indicates no caching). Since GLib 2.10, it is ignored, since instances are allocated with the [slice allocator](#glib-Memory-Slices) now.
    @inlinable var nPreallocs: guint16 {
        /// Prior to GLib 2.10, it specified the number of pre-allocated (cached) instances to reserve memory for (0 indicates no caching). Since GLib 2.10, it is ignored, since instances are allocated with the [slice allocator](#glib-Memory-Slices) now.
        get {
            let rv = _ptr.pointee.n_preallocs
            return rv
        }
        /// Prior to GLib 2.10, it specified the number of pre-allocated (cached) instances to reserve memory for (0 indicates no caching). Since GLib 2.10, it is ignored, since instances are allocated with the [slice allocator](#glib-Memory-Slices) now.
         set {
            _ptr.pointee.n_preallocs = newValue
        }
    }

    // var instanceInit is unavailable because instance_init is void

    /// The `GType` of values conforming to this `GParamSpec`
    @inlinable var valueType: GType {
        /// The `GType` of values conforming to this `GParamSpec`
        get {
            let rv = _ptr.pointee.value_type
            return rv
        }
        /// The `GType` of values conforming to this `GParamSpec`
         set {
            _ptr.pointee.value_type = newValue
        }
    }

    // var finalize is unavailable because finalize is void

    // var valueSetDefault is unavailable because value_set_default is void

    // var valueValidate is unavailable because value_validate is void

    // var valuesCmp is unavailable because values_cmp is void

}


