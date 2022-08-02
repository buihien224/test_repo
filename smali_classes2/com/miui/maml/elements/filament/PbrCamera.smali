.class public Lcom/miui/maml/elements/filament/PbrCamera;
.super Ljava/lang/Object;
.source "PbrCamera.java"


# static fields
.field private static final EXPOSURE_PARAMETERS_NUM:I = 0x3

.field private static final FOV_PROJECTION_NUM:I = 0x4

.field private static final FRUSTUM_PROJECTION_NUM:I = 0x6

.field private static final LOOK_AT_PARAMETERS_NUM:I = 0x9

.field public static final TAG_NAME:Ljava/lang/String; = "Camera"


# instance fields
.field private mCamera:Lcom/google/android/filament/Camera;

.field private mExposure:[Lcom/miui/maml/data/Expression;

.field private mExposureArray:[D

.field private mFov:Lcom/google/android/filament/Camera$Fov;

.field private mFovProjection:[Lcom/miui/maml/data/Expression;

.field private mFovProjectionArray:[D

.field private mFrustumProjection:[Lcom/miui/maml/data/Expression;

.field private mFrustumProjectionArray:[D

.field private mLookAt:[Lcom/miui/maml/data/Expression;

.field private mLookAtArray:[D

.field private mProjectionType:Lcom/google/android/filament/Camera$Projection;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/data/Variables;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/android/filament/Camera$Projection;->ORTHO:Lcom/google/android/filament/Camera$Projection;

    iput-object v0, p0, Lcom/miui/maml/elements/filament/PbrCamera;->mProjectionType:Lcom/google/android/filament/Camera$Projection;

    sget-object v0, Lcom/google/android/filament/Camera$Fov;->VERTICAL:Lcom/google/android/filament/Camera$Fov;

    iput-object v0, p0, Lcom/miui/maml/elements/filament/PbrCamera;->mFov:Lcom/google/android/filament/Camera$Fov;

    const-string v0, "cameraLookAt"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/miui/maml/data/Expression;->buildMultiple(Lcom/miui/maml/data/Variables;Ljava/lang/String;)[Lcom/miui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/elements/filament/PbrCamera;->mLookAt:[Lcom/miui/maml/data/Expression;

    const-string v0, "cameraExposure"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/miui/maml/data/Expression;->buildMultiple(Lcom/miui/maml/data/Variables;Ljava/lang/String;)[Lcom/miui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/elements/filament/PbrCamera;->mExposure:[Lcom/miui/maml/data/Expression;

    const-string v0, "cameraFovProjection"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/miui/maml/data/Expression;->buildMultiple(Lcom/miui/maml/data/Variables;Ljava/lang/String;)[Lcom/miui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/elements/filament/PbrCamera;->mFovProjection:[Lcom/miui/maml/data/Expression;

    const-string v0, "cameraFrustumProjection"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/miui/maml/data/Expression;->buildMultiple(Lcom/miui/maml/data/Variables;Ljava/lang/String;)[Lcom/miui/maml/data/Expression;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/elements/filament/PbrCamera;->mFrustumProjection:[Lcom/miui/maml/data/Expression;

    return-void
.end method

.method private evaluateExpressions([Lcom/miui/maml/data/Expression;[D)V
    .locals 4

    if-eqz p1, :cond_1

    array-length v0, p1

    array-length v1, p2

    if-lt v0, v1, :cond_1

    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    if-eqz v2, :cond_0

    aget-object v2, p1, v1

    invoke-virtual {v2}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    aput-wide v2, p2, v1

    goto :goto_1

    :cond_0
    const-wide/16 v2, 0x0

    aput-wide v2, p2, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private getFov(Ljava/lang/String;)Lcom/google/android/filament/Camera$Fov;
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x7643988a

    if-eq v1, v2, :cond_1

    const v2, 0x52b58c24

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "horizontal"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "vertical"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    :cond_2
    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    sget-object p1, Lcom/google/android/filament/Camera$Fov;->HORIZONTAL:Lcom/google/android/filament/Camera$Fov;

    return-object p1

    :pswitch_1
    sget-object p1, Lcom/google/android/filament/Camera$Fov;->VERTICAL:Lcom/google/android/filament/Camera$Fov;

    return-object p1

    :cond_3
    :goto_1
    sget-object p1, Lcom/google/android/filament/Camera$Fov;->VERTICAL:Lcom/google/android/filament/Camera$Fov;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getProjectionType(Ljava/lang/String;)Lcom/google/android/filament/Camera$Projection;
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x651c3b8

    if-eq v1, v2, :cond_1

    const v2, 0xc653a3c

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "perspective"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const-string v1, "ortho"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    sget-object p1, Lcom/google/android/filament/Camera$Projection;->ORTHO:Lcom/google/android/filament/Camera$Projection;

    return-object p1

    :pswitch_1
    sget-object p1, Lcom/google/android/filament/Camera$Projection;->PERSPECTIVE:Lcom/google/android/filament/Camera$Projection;

    return-object p1

    :cond_3
    :goto_1
    sget-object p1, Lcom/google/android/filament/Camera$Projection;->ORTHO:Lcom/google/android/filament/Camera$Projection;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public createCamera(Lcom/google/android/filament/Engine;)Lcom/google/android/filament/Camera;
    .locals 29

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/filament/Engine;->createCamera()Lcom/google/android/filament/Camera;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/maml/elements/filament/PbrCamera;->mCamera:Lcom/google/android/filament/Camera;

    iget-object v1, v0, Lcom/miui/maml/elements/filament/PbrCamera;->mLookAt:[Lcom/miui/maml/data/Expression;

    const/4 v2, 0x5

    const/4 v3, 0x6

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x4

    if-eqz v1, :cond_0

    const/16 v9, 0x9

    new-array v9, v9, [D

    iput-object v9, v0, Lcom/miui/maml/elements/filament/PbrCamera;->mLookAtArray:[D

    iget-object v9, v0, Lcom/miui/maml/elements/filament/PbrCamera;->mLookAtArray:[D

    invoke-direct {v0, v1, v9}, Lcom/miui/maml/elements/filament/PbrCamera;->evaluateExpressions([Lcom/miui/maml/data/Expression;[D)V

    iget-object v10, v0, Lcom/miui/maml/elements/filament/PbrCamera;->mCamera:Lcom/google/android/filament/Camera;

    iget-object v1, v0, Lcom/miui/maml/elements/filament/PbrCamera;->mLookAtArray:[D

    aget-wide v11, v1, v7

    aget-wide v13, v1, v6

    aget-wide v15, v1, v5

    aget-wide v17, v1, v4

    aget-wide v19, v1, v8

    aget-wide v21, v1, v2

    aget-wide v23, v1, v3

    const/4 v9, 0x7

    aget-wide v25, v1, v9

    const/16 v9, 0x8

    aget-wide v27, v1, v9

    invoke-virtual/range {v10 .. v28}, Lcom/google/android/filament/Camera;->lookAt(DDDDDDDDD)V

    :cond_0
    iget-object v1, v0, Lcom/miui/maml/elements/filament/PbrCamera;->mExposure:[Lcom/miui/maml/data/Expression;

    if-eqz v1, :cond_1

    new-array v9, v4, [D

    iput-object v9, v0, Lcom/miui/maml/elements/filament/PbrCamera;->mExposureArray:[D

    iget-object v9, v0, Lcom/miui/maml/elements/filament/PbrCamera;->mExposureArray:[D

    invoke-direct {v0, v1, v9}, Lcom/miui/maml/elements/filament/PbrCamera;->evaluateExpressions([Lcom/miui/maml/data/Expression;[D)V

    iget-object v1, v0, Lcom/miui/maml/elements/filament/PbrCamera;->mCamera:Lcom/google/android/filament/Camera;

    iget-object v9, v0, Lcom/miui/maml/elements/filament/PbrCamera;->mExposureArray:[D

    aget-wide v10, v9, v7

    double-to-float v10, v10

    aget-wide v11, v9, v6

    double-to-float v11, v11

    aget-wide v12, v9, v5

    double-to-float v9, v12

    invoke-virtual {v1, v10, v11, v9}, Lcom/google/android/filament/Camera;->setExposure(FFF)V

    :cond_1
    iget-object v1, v0, Lcom/miui/maml/elements/filament/PbrCamera;->mFovProjection:[Lcom/miui/maml/data/Expression;

    if-eqz v1, :cond_3

    new-array v9, v8, [D

    iput-object v9, v0, Lcom/miui/maml/elements/filament/PbrCamera;->mFovProjectionArray:[D

    iget-object v9, v0, Lcom/miui/maml/elements/filament/PbrCamera;->mFovProjectionArray:[D

    invoke-direct {v0, v1, v9}, Lcom/miui/maml/elements/filament/PbrCamera;->evaluateExpressions([Lcom/miui/maml/data/Expression;[D)V

    iget-object v1, v0, Lcom/miui/maml/elements/filament/PbrCamera;->mFovProjection:[Lcom/miui/maml/data/Expression;

    array-length v9, v1

    if-le v9, v8, :cond_2

    aget-object v1, v1, v8

    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/maml/elements/filament/PbrCamera;->getFov(Ljava/lang/String;)Lcom/google/android/filament/Camera$Fov;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/maml/elements/filament/PbrCamera;->mFov:Lcom/google/android/filament/Camera$Fov;

    :cond_2
    iget-object v9, v0, Lcom/miui/maml/elements/filament/PbrCamera;->mCamera:Lcom/google/android/filament/Camera;

    iget-object v1, v0, Lcom/miui/maml/elements/filament/PbrCamera;->mFovProjectionArray:[D

    aget-wide v10, v1, v7

    aget-wide v12, v1, v6

    aget-wide v14, v1, v5

    aget-wide v16, v1, v4

    iget-object v1, v0, Lcom/miui/maml/elements/filament/PbrCamera;->mFov:Lcom/google/android/filament/Camera$Fov;

    move-object/from16 v18, v1

    invoke-virtual/range {v9 .. v18}, Lcom/google/android/filament/Camera;->setProjection(DDDDLcom/google/android/filament/Camera$Fov;)V

    :cond_3
    iget-object v1, v0, Lcom/miui/maml/elements/filament/PbrCamera;->mFrustumProjection:[Lcom/miui/maml/data/Expression;

    if-eqz v1, :cond_5

    new-array v9, v3, [D

    iput-object v9, v0, Lcom/miui/maml/elements/filament/PbrCamera;->mFrustumProjectionArray:[D

    iget-object v9, v0, Lcom/miui/maml/elements/filament/PbrCamera;->mFrustumProjectionArray:[D

    invoke-direct {v0, v1, v9}, Lcom/miui/maml/elements/filament/PbrCamera;->evaluateExpressions([Lcom/miui/maml/data/Expression;[D)V

    iget-object v1, v0, Lcom/miui/maml/elements/filament/PbrCamera;->mFrustumProjection:[Lcom/miui/maml/data/Expression;

    array-length v9, v1

    if-le v9, v3, :cond_4

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/maml/elements/filament/PbrCamera;->getProjectionType(Ljava/lang/String;)Lcom/google/android/filament/Camera$Projection;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/maml/elements/filament/PbrCamera;->mProjectionType:Lcom/google/android/filament/Camera$Projection;

    :cond_4
    iget-object v9, v0, Lcom/miui/maml/elements/filament/PbrCamera;->mCamera:Lcom/google/android/filament/Camera;

    iget-object v10, v0, Lcom/miui/maml/elements/filament/PbrCamera;->mProjectionType:Lcom/google/android/filament/Camera$Projection;

    iget-object v1, v0, Lcom/miui/maml/elements/filament/PbrCamera;->mFrustumProjectionArray:[D

    aget-wide v11, v1, v7

    aget-wide v13, v1, v6

    aget-wide v15, v1, v5

    aget-wide v17, v1, v4

    aget-wide v19, v1, v8

    aget-wide v21, v1, v2

    invoke-virtual/range {v9 .. v22}, Lcom/google/android/filament/Camera;->setProjection(Lcom/google/android/filament/Camera$Projection;DDDDDD)V

    :cond_5
    iget-object v1, v0, Lcom/miui/maml/elements/filament/PbrCamera;->mCamera:Lcom/google/android/filament/Camera;

    return-object v1
.end method

.method public onDestroy(Lcom/google/android/filament/Engine;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/maml/elements/filament/PbrCamera;->mCamera:Lcom/google/android/filament/Camera;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Lcom/google/android/filament/Engine;->destroyCamera(Lcom/google/android/filament/Camera;)V

    :cond_0
    return-void
.end method
