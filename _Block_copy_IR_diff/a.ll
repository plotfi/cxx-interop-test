; ModuleID = '../main.ll'
source_filename = "../main.ll"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx12.0.0"

%TSo15UITextAttributeV = type <{ %Ts5Int32VIeyBd_Sg }>
%Ts5Int32VIeyBd_Sg = type <{ [8 x i8] }>
%Ts5Int32V = type <{ i32 }>
%TSo22UIAccessibilityContextV = type <{ %Ts5Int32V, [4 x i8], %TSo15UITextAttributeV, %Ts5Int32V, [4 x i8] }>
%swift.type_descriptor = type opaque
%swift.type = type { i64 }
%swift.protocol_conformance_descriptor = type { i32, i32, i32, i32 }
%struct.__block_descriptor = type { i64, i64 }
%TSS = type <{ %Ts11_StringGutsV }>
%Ts11_StringGutsV = type <{ %Ts13_StringObjectV }>
%Ts13_StringObjectV = type <{ %Ts6UInt64V, %swift.bridge* }>
%Ts6UInt64V = type <{ i64 }>
%swift.bridge = type opaque
%struct.UITextAttribute = type { i32 ()* }
%objc_block = type { %objc_class*, i32, i32, i8*, i8* }
%objc_class = type { %objc_class*, %objc_class*, %swift.opaque*, %swift.opaque*, i64 }
%swift.opaque = type opaque
%swift.refcounted = type { %swift.type*, i64 }
%struct.UIAccessibilityContext = type <{ i32, [4 x i8], %struct.UITextAttribute, i32, [4 x i8] }>

@"$s4main9textAttr1So15UITextAttributeVvp" = hidden global %TSo15UITextAttributeV zeroinitializer, align 8
@"$s4main1as5Int32Vvp" = hidden global %Ts5Int32V zeroinitializer, align 4
@"$s4main7contextSo22UIAccessibilityContextVvp" = hidden global %TSo22UIAccessibilityContextV zeroinitializer, align 8
@"$s4main1bs5Int32Vvp" = hidden global %Ts5Int32V zeroinitializer, align 4
@"$ss23_ContiguousArrayStorageCMn" = external global %swift.type_descriptor, align 4
@"got.$ss23_ContiguousArrayStorageCMn" = private unnamed_addr constant %swift.type_descriptor* @"$ss23_ContiguousArrayStorageCMn"
@"symbolic _____yypG s23_ContiguousArrayStorageC" = linkonce_odr hidden constant <{ i8, i32, [4 x i8], i8 }> <{ i8 2, i32 trunc (i64 sub (i64 ptrtoint (%swift.type_descriptor** @"got.$ss23_ContiguousArrayStorageCMn" to i64), i64 ptrtoint (i32* getelementptr inbounds (<{ i8, i32, [4 x i8], i8 }>, <{ i8, i32, [4 x i8], i8 }>* @"symbolic _____yypG s23_ContiguousArrayStorageC", i32 0, i32 1) to i64)) to i32), [4 x i8] c"yypG", i8 0 }>, section "__TEXT,__swift5_typeref, regular", align 2
@"$ss23_ContiguousArrayStorageCyypGMD" = linkonce_odr hidden global { i32, i32 } { i32 trunc (i64 sub (i64 ptrtoint (<{ i8, i32, [4 x i8], i8 }>* @"symbolic _____yypG s23_ContiguousArrayStorageC" to i64), i64 ptrtoint ({ i32, i32 }* @"$ss23_ContiguousArrayStorageCyypGMD" to i64)) to i32), i32 -9 }, align 8
@"$ss5Int32VN" = external global %swift.type, align 8
@"$ss5Int32VABSzsWL" = linkonce_odr hidden local_unnamed_addr global i8** null, align 8
@"$ss5Int32VSzsMc" = external global %swift.protocol_conformance_descriptor, align 4
@"$sSSN" = external global %swift.type, align 8
@"\01l_entry_point" = private constant { i32 } { i32 trunc (i64 sub (i64 ptrtoint (i32 (i32, i8**)* @main to i64), i64 ptrtoint ({ i32 }* @"\01l_entry_point" to i64)) to i32) }, section "__TEXT, __swift5_entry, regular, no_dead_strip", align 4
@"_swift_FORCE_LOAD_$_swiftFoundation_$_main" = weak_odr hidden constant void ()* @"_swift_FORCE_LOAD_$_swiftFoundation"
@"_swift_FORCE_LOAD_$_swiftObjectiveC_$_main" = weak_odr hidden constant void ()* @"_swift_FORCE_LOAD_$_swiftObjectiveC"
@"_swift_FORCE_LOAD_$_swiftDarwin_$_main" = weak_odr hidden constant void ()* @"_swift_FORCE_LOAD_$_swiftDarwin"
@"_swift_FORCE_LOAD_$_swiftstd_$_main" = weak_odr hidden constant void ()* @"_swift_FORCE_LOAD_$_swiftstd"
@"_swift_FORCE_LOAD_$_swiftCoreFoundation_$_main" = weak_odr hidden constant void ()* @"_swift_FORCE_LOAD_$_swiftCoreFoundation"
@"_swift_FORCE_LOAD_$_swiftDispatch_$_main" = weak_odr hidden constant void ()* @"_swift_FORCE_LOAD_$_swiftDispatch"
@"_swift_FORCE_LOAD_$_swiftXPC_$_main" = weak_odr hidden constant void ()* @"_swift_FORCE_LOAD_$_swiftXPC"
@"_swift_FORCE_LOAD_$_swiftIOKit_$_main" = weak_odr hidden constant void ()* @"_swift_FORCE_LOAD_$_swiftIOKit"
@"_swift_FORCE_LOAD_$_swiftCoreGraphics_$_main" = weak_odr hidden constant void ()* @"_swift_FORCE_LOAD_$_swiftCoreGraphics"
@__swift_reflection_version = linkonce_odr hidden constant i16 3
@_NSConcreteStackBlock = external global i8*
@.str = private unnamed_addr constant [6 x i8] c"i8@?0\00", align 1
@OBJC_CLASS_NAME_ = private unnamed_addr constant [1 x i8] zeroinitializer, section "__TEXT,__objc_classname,cstring_literals", align 1
@"__block_descriptor_36_e5_i8\01?0l" = linkonce_odr hidden unnamed_addr constant { i64, i64, i8*, i8* } { i64 0, i64 36, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @OBJC_CLASS_NAME_, i32 0, i32 0) }, align 8
@_NSConcreteGlobalBlock = external global i8*
@"__block_descriptor_32_e5_i8\01?0l" = linkonce_odr hidden unnamed_addr constant { i64, i64, i8*, i8* } { i64 0, i64 32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8* null }, align 8
@__block_literal_global = internal constant { i8**, i32, i32, i8*, %struct.__block_descriptor* } { i8** @_NSConcreteGlobalBlock, i32 1342177280, i32 0, i8* bitcast (i32 (i8*)* @___ZN15UITextAttributeC2Ev_block_invoke to i8*), %struct.__block_descriptor* bitcast ({ i64, i64, i8*, i8* }* @"__block_descriptor_32_e5_i8\01?0l" to %struct.__block_descriptor*) }, align 8 #0
@llvm.used = appending global [12 x i8*] [i8* bitcast ({ i32 }* @"\01l_entry_point" to i8*), i8* bitcast (i16* @__swift_reflection_version to i8*), i8* bitcast (void ()** @"_swift_FORCE_LOAD_$_swiftCoreFoundation_$_main" to i8*), i8* bitcast (void ()** @"_swift_FORCE_LOAD_$_swiftCoreGraphics_$_main" to i8*), i8* bitcast (void ()** @"_swift_FORCE_LOAD_$_swiftDarwin_$_main" to i8*), i8* bitcast (void ()** @"_swift_FORCE_LOAD_$_swiftDispatch_$_main" to i8*), i8* bitcast (void ()** @"_swift_FORCE_LOAD_$_swiftFoundation_$_main" to i8*), i8* bitcast (void ()** @"_swift_FORCE_LOAD_$_swiftIOKit_$_main" to i8*), i8* bitcast (void ()** @"_swift_FORCE_LOAD_$_swiftObjectiveC_$_main" to i8*), i8* bitcast (void ()** @"_swift_FORCE_LOAD_$_swiftXPC_$_main" to i8*), i8* bitcast (void ()** @"_swift_FORCE_LOAD_$_swiftstd_$_main" to i8*), i8* bitcast (i32 (i32, i8**)* @main to i8*)], section "llvm.metadata"
@llvm.compiler.used = appending global [1 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @OBJC_CLASS_NAME_, i32 0, i32 0)], section "llvm.metadata"

define i32 @main(i32 %arg, i8** nocapture readnone %arg1) #1 {
entry:
  %access-scratch = alloca [24 x i8], align 8
  %"$interpolation" = alloca %TSS, align 8
  %access-scratch1 = alloca [24 x i8], align 8
  %i = alloca %Ts5Int32V, align 4
  %i2 = alloca %struct.UITextAttribute, align 8
  %access-scratch4 = alloca [24 x i8], align 8
  %"$interpolation7" = alloca %TSS, align 8
  %access-scratch9 = alloca [24 x i8], align 8
  %i3 = alloca %Ts5Int32V, align 4
  %i4 = tail call %struct.UITextAttribute* @_ZN15UITextAttributeC1Ei(%struct.UITextAttribute* bitcast (%TSo15UITextAttributeV* @"$s4main9textAttr1So15UITextAttributeVvp" to %struct.UITextAttribute*), i32 24)
  %i5 = getelementptr inbounds [24 x i8], [24 x i8]* %access-scratch, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* nonnull %i5)
  call void @swift_beginAccess(i8* getelementptr inbounds (%TSo15UITextAttributeV, %TSo15UITextAttributeV* @"$s4main9textAttr1So15UITextAttributeVvp", i64 0, i32 0, i32 0, i64 0), [24 x i8]* nonnull %access-scratch, i64 0, i8* null) #5
  %i6 = load i64, i64* bitcast (%TSo15UITextAttributeV* @"$s4main9textAttr1So15UITextAttributeVvp" to i64*), align 8
  %i7 = icmp eq i64 %i6, 0
  br i1 %i7, label %bb65, label %bb

bb:                                               ; preds = %entry
  %i8 = inttoptr i64 %i6 to %objc_block*
  %i9 = call %objc_block* @_Block_copy(%objc_block* nonnull %i8)
  %i10 = getelementptr inbounds %objc_block, %objc_block* %i8, i64 0, i32 3
  %i11 = bitcast i8** %i10 to i32 (%objc_block*)**
  %i12 = load i32 (%objc_block*)*, i32 (%objc_block*)** %i11, align 8
  %i13 = call i32 %i12(%objc_block* nonnull %i8)
  store i32 %i13, i32* getelementptr inbounds (%Ts5Int32V, %Ts5Int32V* @"$s4main1as5Int32Vvp", i64 0, i32 0), align 4
  call void @_Block_release(%objc_block* nonnull %i8) #5
  %i14 = call %swift.type* @__swift_instantiateConcreteTypeFromMangledName({ i32, i32 }* nonnull @"$ss23_ContiguousArrayStorageCyypGMD") #13
  %i15 = call noalias %swift.refcounted* @swift_allocObject(%swift.type* %i14, i64 64, i64 7) #5
  %i16 = getelementptr inbounds %swift.refcounted, %swift.refcounted* %i15, i64 1
  %i17 = bitcast %swift.refcounted* %i16 to <2 x i64>*
  store <2 x i64> <i64 1, i64 2>, <2 x i64>* %i17, align 8
  %i18 = getelementptr inbounds %swift.refcounted, %swift.refcounted* %i15, i64 2
  %i19 = bitcast %TSS* %"$interpolation" to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %i19)
  %"$interpolation._guts._object._countAndFlagsBits._value" = getelementptr inbounds %TSS, %TSS* %"$interpolation", i64 0, i32 0, i32 0, i32 0, i32 0
  store i64 2318902400312042818, i64* %"$interpolation._guts._object._countAndFlagsBits._value", align 8
  %"$interpolation._guts._object._object" = getelementptr inbounds %TSS, %TSS* %"$interpolation", i64 0, i32 0, i32 0, i32 1
  store %swift.bridge* inttoptr (i64 -1729382256910270464 to %swift.bridge*), %swift.bridge** %"$interpolation._guts._object._object", align 8
  %i20 = getelementptr inbounds [24 x i8], [24 x i8]* %access-scratch1, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* nonnull %i20)
  call void @swift_beginAccess(i8* bitcast (%Ts5Int32V* @"$s4main1as5Int32Vvp" to i8*), [24 x i8]* nonnull %access-scratch1, i64 0, i8* null) #5
  %i21 = load i32, i32* getelementptr inbounds (%Ts5Int32V, %Ts5Int32V* @"$s4main1as5Int32Vvp", i64 0, i32 0), align 4
  %i22 = bitcast %Ts5Int32V* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %i22)
  %._value = getelementptr inbounds %Ts5Int32V, %Ts5Int32V* %i, i64 0, i32 0
  store i32 %i21, i32* %._value, align 4
  %i23 = tail call i8** @"$ss5Int32VABSzsWl"() #14
  %i24 = bitcast %Ts5Int32V* %i to %swift.opaque*
  %i25 = call swiftcc { i64, %swift.bridge* } @"$sSzsE11descriptionSSvg"(%swift.type* nonnull @"$ss5Int32VN", i8** %i23, %swift.opaque* noalias nocapture nonnull swiftself %i24)
  %i26 = extractvalue { i64, %swift.bridge* } %i25, 0
  %i27 = extractvalue { i64, %swift.bridge* } %i25, 1
  call swiftcc void @"$sSS6appendyySSF"(i64 %i26, %swift.bridge* %i27, %TSS* nocapture nonnull swiftself dereferenceable(16) %"$interpolation")
  call void @swift_bridgeObjectRelease(%swift.bridge* %i27) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %i22)
  %i28 = load i64, i64* %"$interpolation._guts._object._countAndFlagsBits._value", align 8
  %i29 = load %swift.bridge*, %swift.bridge** %"$interpolation._guts._object._object", align 8
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %i19)
  %i30 = getelementptr inbounds %swift.refcounted, %swift.refcounted* %i15, i64 3, i32 1
  %i31 = bitcast i64* %i30 to %swift.type**
  store %swift.type* @"$sSSN", %swift.type** %i31, align 8
  %._guts._object._countAndFlagsBits._value = bitcast %swift.refcounted* %i18 to i64*
  store i64 %i28, i64* %._guts._object._countAndFlagsBits._value, align 8
  %._guts._object._object = getelementptr inbounds %swift.refcounted, %swift.refcounted* %i15, i64 2, i32 1
  %i32 = bitcast i64* %._guts._object._object to %swift.bridge**
  store %swift.bridge* %i29, %swift.bridge** %i32, align 8
  %i33 = bitcast %swift.refcounted* %i15 to %swift.bridge*
  call swiftcc void @"$ss5print_9separator10terminatoryypd_S2StF"(%swift.bridge* %i33, i64 32, %swift.bridge* nonnull inttoptr (i64 -2233785415175766016 to %swift.bridge*), i64 10, %swift.bridge* nonnull inttoptr (i64 -2233785415175766016 to %swift.bridge*))
  call void @swift_release(%swift.refcounted* %i15) #5
  %i34 = bitcast %struct.UITextAttribute* %i2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %i34)
  %i35 = call %struct.UITextAttribute* @_ZN15UITextAttributeC1ERKS_(%struct.UITextAttribute* %i2, %struct.UITextAttribute* bitcast (%TSo15UITextAttributeV* @"$s4main9textAttr1So15UITextAttributeVvp" to %struct.UITextAttribute*)) #5
  call void @_ZN22UIAccessibilityContext5buildERK15UITextAttribute(%struct.UIAccessibilityContext* bitcast (%TSo22UIAccessibilityContextV* @"$s4main7contextSo22UIAccessibilityContextVvp" to %struct.UIAccessibilityContext*), %struct.UITextAttribute* %i2)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %i34)
  %i36 = getelementptr inbounds [24 x i8], [24 x i8]* %access-scratch4, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* nonnull %i36)
  call void @swift_beginAccess(i8* bitcast (%TSo22UIAccessibilityContextV* @"$s4main7contextSo22UIAccessibilityContextVvp" to i8*), [24 x i8]* nonnull %access-scratch4, i64 0, i8* null) #5
  %i37 = load i64, i64* bitcast (%Ts5Int32VIeyBd_Sg* getelementptr inbounds (%TSo22UIAccessibilityContextV, %TSo22UIAccessibilityContextV* @"$s4main7contextSo22UIAccessibilityContextVvp", i64 0, i32 2, i32 0) to i64*), align 8
  %i38 = icmp eq i64 %i37, 0
  br i1 %i38, label %bb66, label %bb40

bb40:                                             ; preds = %bb
  %i40 = inttoptr i64 %i37 to %objc_block*
  %i41 = call %objc_block* @_Block_copy(%objc_block* nonnull %i40)
  %i42 = getelementptr inbounds %objc_block, %objc_block* %i40, i64 0, i32 3
  %i43 = bitcast i8** %i42 to i32 (%objc_block*)**
  %i44 = load i32 (%objc_block*)*, i32 (%objc_block*)** %i43, align 8
  %i45 = call i32 %i44(%objc_block* nonnull %i40)
  store i32 %i45, i32* getelementptr inbounds (%Ts5Int32V, %Ts5Int32V* @"$s4main1bs5Int32Vvp", i64 0, i32 0), align 4
  call void @_Block_release(%objc_block* nonnull %i40) #5
  %i46 = call noalias %swift.refcounted* @swift_allocObject(%swift.type* %i14, i64 64, i64 7) #5
  %i47 = getelementptr inbounds %swift.refcounted, %swift.refcounted* %i46, i64 1
  %i48 = bitcast %swift.refcounted* %i47 to <2 x i64>*
  store <2 x i64> <i64 1, i64 2>, <2 x i64>* %i48, align 8
  %i49 = getelementptr inbounds %swift.refcounted, %swift.refcounted* %i46, i64 2
  %i50 = bitcast %TSS* %"$interpolation7" to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %i50)
  %"$interpolation7._guts._object._countAndFlagsBits._value" = getelementptr inbounds %TSS, %TSS* %"$interpolation7", i64 0, i32 0, i32 0, i32 0, i32 0
  store i64 35383642320708, i64* %"$interpolation7._guts._object._countAndFlagsBits._value", align 8
  %"$interpolation7._guts._object._object" = getelementptr inbounds %TSS, %TSS* %"$interpolation7", i64 0, i32 0, i32 0, i32 1
  store %swift.bridge* inttoptr (i64 -1873497444986126336 to %swift.bridge*), %swift.bridge** %"$interpolation7._guts._object._object", align 8
  %i51 = getelementptr inbounds [24 x i8], [24 x i8]* %access-scratch9, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* nonnull %i51)
  call void @swift_beginAccess(i8* bitcast (%Ts5Int32V* @"$s4main1bs5Int32Vvp" to i8*), [24 x i8]* nonnull %access-scratch9, i64 0, i8* null) #5
  %i52 = load i32, i32* getelementptr inbounds (%Ts5Int32V, %Ts5Int32V* @"$s4main1bs5Int32Vvp", i64 0, i32 0), align 4
  %i53 = bitcast %Ts5Int32V* %i3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %i53)
  %._value10 = getelementptr inbounds %Ts5Int32V, %Ts5Int32V* %i3, i64 0, i32 0
  store i32 %i52, i32* %._value10, align 4
  %i54 = bitcast %Ts5Int32V* %i3 to %swift.opaque*
  %i55 = call swiftcc { i64, %swift.bridge* } @"$sSzsE11descriptionSSvg"(%swift.type* nonnull @"$ss5Int32VN", i8** %i23, %swift.opaque* noalias nocapture nonnull swiftself %i54)
  %i56 = extractvalue { i64, %swift.bridge* } %i55, 0
  %i57 = extractvalue { i64, %swift.bridge* } %i55, 1
  call swiftcc void @"$sSS6appendyySSF"(i64 %i56, %swift.bridge* %i57, %TSS* nocapture nonnull swiftself dereferenceable(16) %"$interpolation7")
  call void @swift_bridgeObjectRelease(%swift.bridge* %i57) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %i53)
  %i58 = load i64, i64* %"$interpolation7._guts._object._countAndFlagsBits._value", align 8
  %i59 = load %swift.bridge*, %swift.bridge** %"$interpolation7._guts._object._object", align 8
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %i50)
  %i60 = getelementptr inbounds %swift.refcounted, %swift.refcounted* %i46, i64 3, i32 1
  %i61 = bitcast i64* %i60 to %swift.type**
  store %swift.type* @"$sSSN", %swift.type** %i61, align 8
  %._guts12._object._countAndFlagsBits._value = bitcast %swift.refcounted* %i49 to i64*
  store i64 %i58, i64* %._guts12._object._countAndFlagsBits._value, align 8
  %._guts12._object._object = getelementptr inbounds %swift.refcounted, %swift.refcounted* %i46, i64 2, i32 1
  %i62 = bitcast i64* %._guts12._object._object to %swift.bridge**
  store %swift.bridge* %i59, %swift.bridge** %i62, align 8
  %i63 = bitcast %swift.refcounted* %i46 to %swift.bridge*
  call swiftcc void @"$ss5print_9separator10terminatoryypd_S2StF"(%swift.bridge* %i63, i64 32, %swift.bridge* nonnull inttoptr (i64 -2233785415175766016 to %swift.bridge*), i64 10, %swift.bridge* nonnull inttoptr (i64 -2233785415175766016 to %swift.bridge*))
  call void @swift_release(%swift.refcounted* %i46) #5
  ret i32 0

bb65:                                             ; preds = %entry
  call void asm sideeffect "", "n"(i32 0) #5
  call void @llvm.trap()
  unreachable

bb66:                                             ; preds = %bb
  call void asm sideeffect "", "n"(i32 1) #5
  call void @llvm.trap()
  unreachable
}

; Function Attrs: optsize ssp
define linkonce_odr %struct.UITextAttribute* @_ZN15UITextAttributeC1Ei(%struct.UITextAttribute* nonnull returned align 8 dereferenceable(8) %this, i32 %text) unnamed_addr #2 align 2 {
entry:
  %block.i = alloca <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i32 }>, align 8
  %i = bitcast <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i32 }>* %block.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 36, i8* nonnull %i)
  %block.isa.i = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i32 }>, <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i32 }>* %block.i, i64 0, i32 0
  store i8* bitcast (i8** @_NSConcreteStackBlock to i8*), i8** %block.isa.i, align 8
  %block.flags.i = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i32 }>, <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i32 }>* %block.i, i64 0, i32 1
  %i1 = bitcast i32* %block.flags.i to <2 x i32>*
  store <2 x i32> <i32 -1073741824, i32 0>, <2 x i32>* %i1, align 8
  %block.invoke.i = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i32 }>, <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i32 }>* %block.i, i64 0, i32 3
  store i8* bitcast (i32 (i8*)* @___ZN15UITextAttributeC2Ei_block_invoke to i8*), i8** %block.invoke.i, align 8
  %block.descriptor.i = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i32 }>, <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i32 }>* %block.i, i64 0, i32 4
  store %struct.__block_descriptor* bitcast ({ i64, i64, i8*, i8* }* @"__block_descriptor_36_e5_i8\01?0l" to %struct.__block_descriptor*), %struct.__block_descriptor** %block.descriptor.i, align 8
  %block.captured.i = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i32 }>, <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i32 }>* %block.i, i64 0, i32 5
  store i32 %text, i32* %block.captured.i, align 8, !tbaa !41
  %i2 = call i8* @llvm.objc.retainBlock(i8* nonnull %i) #5, !clang.arc.copy_on_escape !45
  %i3 = bitcast %struct.UITextAttribute* %this to i8**
  store i8* %i2, i8** %i3, align 8, !tbaa !46
  call void @llvm.lifetime.end.p0i8(i64 36, i8* nonnull %i)
  ret %struct.UITextAttribute* %this
}

; Function Attrs: cold noreturn nounwind
declare void @llvm.trap() #3

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: nounwind
declare void @swift_beginAccess(i8*, [24 x i8]*, i64, i8*) local_unnamed_addr #5

declare %objc_block* @_Block_copy(%objc_block*) local_unnamed_addr

; Function Attrs: nounwind
declare void @_Block_release(%objc_block*) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline nounwind readonly willreturn
define linkonce_odr hidden %swift.type* @__swift_instantiateConcreteTypeFromMangledName({ i32, i32 }* %arg) local_unnamed_addr #6 {
entry:
  %i = bitcast { i32, i32 }* %arg to i64*
  %i1 = load atomic i64, i64* %i monotonic, align 8
  %i2 = icmp slt i64 %i1, 0
  br i1 %i2, label %bb5, label %bb, !prof !48

bb:                                               ; preds = %bb5, %entry
  %i3 = phi i64 [ %i1, %entry ], [ %i13, %bb5 ]
  %i4 = inttoptr i64 %i3 to %swift.type*
  ret %swift.type* %i4

bb5:                                              ; preds = %entry
  %i6 = ashr i64 %i1, 32
  %i7 = sub nsw i64 0, %i6
  %sext = shl i64 %i1, 32
  %i8 = ashr exact i64 %sext, 32
  %i9 = ptrtoint { i32, i32 }* %arg to i64
  %i10 = add i64 %i8, %i9
  %i11 = inttoptr i64 %i10 to i8*
  %i12 = tail call swiftcc %swift.type* @swift_getTypeByMangledNameInContext(i8* %i11, i64 %i7, %swift.type_descriptor* null, i8** null) #13
  %i13 = ptrtoint %swift.type* %i12 to i64
  store atomic i64 %i13, i64* %i monotonic, align 8
  br label %bb
}

; Function Attrs: argmemonly nounwind
declare swiftcc %swift.type* @swift_getTypeByMangledNameInContext(i8*, i64, %swift.type_descriptor*, i8**) local_unnamed_addr #7

; Function Attrs: nounwind
declare %swift.refcounted* @swift_allocObject(%swift.type*, i64, i64) local_unnamed_addr #5

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

declare swiftcc void @"$sSS6appendyySSF"(i64, %swift.bridge*, %TSS* nocapture swiftself dereferenceable(16)) local_unnamed_addr #1

declare swiftcc { i64, %swift.bridge* } @"$sSzsE11descriptionSSvg"(%swift.type*, i8**, %swift.opaque* noalias nocapture swiftself) local_unnamed_addr #1

; Function Attrs: nofree noinline nosync nounwind readnone
define linkonce_odr hidden i8** @"$ss5Int32VABSzsWl"() local_unnamed_addr #8 {
entry:
  %i = load i8**, i8*** @"$ss5Int32VABSzsWL", align 8
  %i1 = icmp eq i8** %i, null
  br i1 %i1, label %cacheIsNull, label %cont

cacheIsNull:                                      ; preds = %entry
  %i2 = tail call i8** @swift_getWitnessTable(%swift.protocol_conformance_descriptor* nonnull @"$ss5Int32VSzsMc", %swift.type* nonnull @"$ss5Int32VN", i8*** undef) #5
  store atomic i8** %i2, i8*** @"$ss5Int32VABSzsWL" release, align 8
  br label %cont

cont:                                             ; preds = %cacheIsNull, %entry
  %i3 = phi i8** [ %i, %entry ], [ %i2, %cacheIsNull ]
  ret i8** %i3
}

; Function Attrs: nofree nounwind readonly
declare i8** @swift_getWitnessTable(%swift.protocol_conformance_descriptor*, %swift.type*, i8***) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @swift_bridgeObjectRelease(%swift.bridge*) local_unnamed_addr #5

declare swiftcc void @"$ss5print_9separator10terminatoryypd_S2StF"(%swift.bridge*, i64, %swift.bridge*, i64, %swift.bridge*) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @swift_release(%swift.refcounted*) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind optsize ssp
define linkonce_odr %struct.UITextAttribute* @_ZN15UITextAttributeC1ERKS_(%struct.UITextAttribute* nonnull returned align 8 dereferenceable(8) %this, %struct.UITextAttribute* nonnull align 8 dereferenceable(8) %arg) unnamed_addr #10 align 2 {
entry:
  %i = bitcast %struct.UITextAttribute* %arg to i8**
  %i1 = load i8*, i8** %i, align 8, !tbaa !46
  %i2 = tail call i8* @llvm.objc.retainBlock(i8* %i1) #5, !clang.arc.copy_on_escape !45
  %i3 = bitcast %struct.UITextAttribute* %this to i8**
  store i8* %i2, i8** %i3, align 8, !tbaa !46
  ret %struct.UITextAttribute* %this
}

; Function Attrs: optsize ssp
define linkonce_odr void
@_ZN22UIAccessibilityContext5buildERK15UITextAttribute
(%struct.UIAccessibilityContext* noalias sret(%struct.UIAccessibilityContext) align 8 %agg.result,
 %struct.UITextAttribute* nonnull align 8 dereferenceable(8) %accessibilityLabel_maybecoerce)
 local_unnamed_addr #2 align 2 {
entry:
  %accessibilityLabel.i.i = getelementptr inbounds %struct.UIAccessibilityContext, %struct.UIAccessibilityContext* %agg.result, i64 0, i32 2
  %i = tail call i8* @llvm.objc.retainBlock(i8* bitcast ({ i8**, i32, i32, i8*, %struct.__block_descriptor* }* @__block_literal_global to i8*)) #5, !clang.arc.copy_on_escape !45
  %i1 = bitcast %struct.UITextAttribute* %accessibilityLabel.i.i to i8**
  %ibitcast = bitcast %struct.UITextAttribute* %accessibilityLabel_maybecoerce to i8**
  %i2 = load i8*, i8** %ibitcast, align 8, !tbaa !46
  %i3 = tail call i8* @llvm.objc.retainBlock(i8* %i2) #5, !clang.arc.copy_on_escape !45
  store i8* %i3, i8** %i1, align 8, !tbaa !46
  tail call void @llvm.objc.release(i8* %i) #5
  ret void
}

declare extern_weak void @"_swift_FORCE_LOAD_$_swiftFoundation"()

declare extern_weak void @"_swift_FORCE_LOAD_$_swiftObjectiveC"()

declare extern_weak void @"_swift_FORCE_LOAD_$_swiftDarwin"()

declare extern_weak void @"_swift_FORCE_LOAD_$_swiftstd"()

declare extern_weak void @"_swift_FORCE_LOAD_$_swiftCoreFoundation"()

declare extern_weak void @"_swift_FORCE_LOAD_$_swiftDispatch"()

declare extern_weak void @"_swift_FORCE_LOAD_$_swiftXPC"()

declare extern_weak void @"_swift_FORCE_LOAD_$_swiftIOKit"()

declare extern_weak void @"_swift_FORCE_LOAD_$_swiftCoreGraphics"()

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize readonly ssp willreturn
define internal i32 @___ZN15UITextAttributeC2Ei_block_invoke(i8* nocapture readonly %.block_descriptor) #11 {
entry:
  %block.capture.addr = getelementptr inbounds i8, i8* %.block_descriptor, i64 32
  %i = bitcast i8* %block.capture.addr to i32*
  %i1 = load i32, i32* %i, align 8, !tbaa !41
  ret i32 %i1
}

; Function Attrs: nounwind
declare i8* @llvm.objc.retainBlock(i8*) #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize readnone ssp willreturn
define internal i32 @___ZN15UITextAttributeC2Ev_block_invoke(i8* nocapture readnone %.block_descriptor) #12 {
entry:
  ret i32 42
}

; Function Attrs: nounwind
declare void @llvm.objc.release(i8*) #5

attributes #0 = { "objc_arc_inert" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-a12" "target-features"="+aes,+crc,+crypto,+fp-armv8,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.3a,+zcm,+zcz" }
attributes #2 = { optsize ssp "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-a12" "target-features"="+aes,+crc,+crypto,+fp-armv8,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.3a,+zcm,+zcz" }
attributes #3 = { cold noreturn nounwind }
attributes #4 = { argmemonly nofree nosync nounwind willreturn }
attributes #5 = { nounwind }
attributes #6 = { mustprogress nofree noinline nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-a12" "target-features"="+aes,+crc,+crypto,+fp-armv8,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.3a,+zcm,+zcz" }
attributes #7 = { argmemonly nounwind }
attributes #8 = { nofree noinline nosync nounwind readnone "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-a12" "target-features"="+aes,+crc,+crypto,+fp-armv8,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.3a,+zcm,+zcz" }
attributes #9 = { nofree nounwind readonly }
attributes #10 = { inlinehint nounwind optsize ssp "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-a12" "target-features"="+aes,+crc,+crypto,+fp-armv8,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.3a,+zcm,+zcz" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind optsize readonly ssp willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-a12" "target-features"="+aes,+crc,+crypto,+fp-armv8,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.3a,+zcm,+zcz" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind optsize readnone ssp willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-a12" "target-features"="+aes,+crc,+crypto,+fp-armv8,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.3a,+zcm,+zcz" }
attributes #13 = { nounwind readonly }
attributes #14 = { nounwind readnone }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16}
!swift.module.flags = !{!17}
!llvm.asan.globals = !{!18}
!llvm.linker.options = !{!19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 12, i32 3]}
!1 = !{i32 1, !"Objective-C Version", i32 2}
!2 = !{i32 1, !"Objective-C Image Info Version", i32 0}
!3 = !{i32 1, !"Objective-C Image Info Section", !"__DATA,__objc_imageinfo,regular,no_dead_strip"}
!4 = !{i32 1, !"Objective-C Garbage Collection", i8 0}
!5 = !{i32 1, !"Objective-C Class Properties", i32 64}
!6 = !{i32 1, !"wchar_size", i32 4}
!7 = !{i32 1, !"branch-target-enforcement", i32 0}
!8 = !{i32 1, !"sign-return-address", i32 0}
!9 = !{i32 1, !"sign-return-address-all", i32 0}
!10 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!11 = !{i32 7, !"PIC Level", i32 2}
!12 = !{i32 7, !"frame-pointer", i32 1}
!13 = !{i32 1, !"Swift Version", i32 7}
!14 = !{i32 1, !"Swift ABI Version", i32 7}
!15 = !{i32 1, !"Swift Major Version", i8 5}
!16 = !{i32 1, !"Swift Minor Version", i8 8}
!17 = !{!"standard-library", i1 false}
!18 = !{<{ i8, i32, [4 x i8], i8 }>* @"symbolic _____yypG s23_ContiguousArrayStorageC", null, null, i1 false, i1 true}
!19 = !{!"-lswiftFoundation"}
!20 = !{!"-lswiftCore"}
!21 = !{!"-lswift_Concurrency"}
!22 = !{!"-lswiftObjectiveC"}
!23 = !{!"-lswiftDarwin"}
!24 = !{!"-lswiftstd"}
!25 = !{!"-framework", !"Foundation"}
!26 = !{!"-lswiftCoreFoundation"}
!27 = !{!"-framework", !"CoreFoundation"}
!28 = !{!"-lswiftDispatch"}
!29 = !{!"-framework", !"Combine"}
!30 = !{!"-framework", !"CoreServices"}
!31 = !{!"-framework", !"Security"}
!32 = !{!"-lswiftXPC"}
!33 = !{!"-framework", !"CFNetwork"}
!34 = !{!"-framework", !"DiskArbitration"}
!35 = !{!"-lswiftIOKit"}
!36 = !{!"-framework", !"IOKit"}
!37 = !{!"-lswiftCoreGraphics"}
!38 = !{!"-framework", !"CoreGraphics"}
!39 = !{!"-lobjc"}
!40 = !{!"-lc++"}
!41 = !{!42, !42, i64 0}
!42 = !{!"int", !43, i64 0}
!43 = !{!"omnipotent char", !44, i64 0}
!44 = !{!"Simple C++ TBAA"}
!45 = !{}
!46 = !{!47, !43, i64 0}
!47 = !{!"_ZTS15UITextAttribute", !43, i64 0}
!48 = !{!"branch_weights", i32 1, i32 2000}
