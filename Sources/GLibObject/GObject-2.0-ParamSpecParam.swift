import CGLib
import GLib

// MARK: - ParamSpecParam Class

/// The `ParamSpecParamProtocol` protocol exposes the methods and properties of an underlying `GParamSpecParam` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ParamSpecParam`.
/// Alternatively, use `ParamSpecParamRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A `GParamSpec` derived structure that contains the meta data for `G_TYPE_PARAM`
/// properties.
public protocol ParamSpecParamProtocol: ParamSpecProtocol {
    /// Untyped pointer to the underlying `GParamSpecParam` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GParamSpecParam` instance.
    var param_spec_param_ptr: UnsafeMutablePointer<GParamSpecParam> { get }
}

/// The `ParamSpecParamRef` type acts as a lightweight Swift reference to an underlying `GParamSpecParam` instance.
/// It exposes methods that can operate on this data type through `ParamSpecParamProtocol` conformance.
/// Use `ParamSpecParamRef` only as an `unowned` reference to an existing `GParamSpecParam` instance.
///
/// A `GParamSpec` derived structure that contains the meta data for `G_TYPE_PARAM`
/// properties.
public struct ParamSpecParamRef: ParamSpecParamProtocol {
    /// Untyped pointer to the underlying `GParamSpecParam` instance.
    /// For type-safe access, use the generated, typed pointer `param_spec_param_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ParamSpecParamRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GParamSpecParam>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ParamSpecParamProtocol`
    init<T: ParamSpecParamProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecParamProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecParamProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecParamProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecParamProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecParamProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ParamSpecParam` type acts as a reference-counted owner of an underlying `GParamSpecParam` instance.
/// It provides the methods that can operate on this data type through `ParamSpecParamProtocol` conformance.
/// Use `ParamSpecParam` as a strong reference or owner of a `GParamSpecParam` instance.
///
/// A `GParamSpec` derived structure that contains the meta data for `G_TYPE_PARAM`
/// properties.
open class ParamSpecParam: ParamSpec, ParamSpecParamProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecParam` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GParamSpecParam>) {
        super.init(cast(op))
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GParamSpecParam`.
    /// i.e., ownership is transferred to the `ParamSpecParam` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GParamSpecParam>) {
        super.init(retaining: cast(op))
    }

    /// Reference intialiser for a related type that implements `ParamSpecParamProtocol`
    /// Will retain `GParamSpecParam`.
    /// - Parameter other: an instance of a related type that implements `ParamSpecParamProtocol`
    public init<T: ParamSpecParamProtocol>(paramSpecParam other: T) {
        super.init(retaining: cast(other.param_spec_param_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecParamProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecParamProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecParamProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecParamProtocol`.**
    override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecParamProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecParamProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecParamProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecParamProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

// MARK: - no ParamSpecParam properties

// MARK: - no signals


public extension ParamSpecParamProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GParamSpecParam` instance.
    var param_spec_param_ptr: UnsafeMutablePointer<GParamSpecParam> { return ptr.assumingMemoryBound(to: GParamSpecParam.self) }

}



