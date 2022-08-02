.class public Lmiuix/visual/check/VisualCheckGroup;
.super Lmiuix/visual/check/FlowLayout;
.source "VisualCheckGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/visual/check/VisualCheckGroup$OnCheckedChangeListener;,
        Lmiuix/visual/check/VisualCheckGroup$CheckedStateTracker;,
        Lmiuix/visual/check/VisualCheckGroup$PassThroughHierarchyChangeListener;
    }
.end annotation


# instance fields
.field private mCheckedId:I

.field private mChildOnCheckedChangeListener:Lmiuix/visual/check/VisualCheckBox$OnCheckedChangeListener;

.field private mOnCheckedChangeListener:Lmiuix/visual/check/VisualCheckGroup$OnCheckedChangeListener;

.field private mPassThroughListener:Lmiuix/visual/check/VisualCheckGroup$PassThroughHierarchyChangeListener;

.field private mProtectFromCheckedChange:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Lmiuix/visual/check/FlowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    iput v0, p0, Lmiuix/visual/check/VisualCheckGroup;->mCheckedId:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lmiuix/visual/check/VisualCheckGroup;->mProtectFromCheckedChange:Z

    new-instance v1, Lmiuix/visual/check/VisualCheckGroup$PassThroughHierarchyChangeListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lmiuix/visual/check/VisualCheckGroup$PassThroughHierarchyChangeListener;-><init>(Lmiuix/visual/check/VisualCheckGroup;Lmiuix/visual/check/VisualCheckGroup$1;)V

    iput-object v1, p0, Lmiuix/visual/check/VisualCheckGroup;->mPassThroughListener:Lmiuix/visual/check/VisualCheckGroup$PassThroughHierarchyChangeListener;

    iget-object v1, p0, Lmiuix/visual/check/VisualCheckGroup;->mPassThroughListener:Lmiuix/visual/check/VisualCheckGroup$PassThroughHierarchyChangeListener;

    invoke-super {p0, v1}, Lmiuix/visual/check/FlowLayout;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    new-instance v1, Lmiuix/visual/check/VisualCheckGroup$CheckedStateTracker;

    invoke-direct {v1, p0, v2}, Lmiuix/visual/check/VisualCheckGroup$CheckedStateTracker;-><init>(Lmiuix/visual/check/VisualCheckGroup;Lmiuix/visual/check/VisualCheckGroup$1;)V

    iput-object v1, p0, Lmiuix/visual/check/VisualCheckGroup;->mChildOnCheckedChangeListener:Lmiuix/visual/check/VisualCheckBox$OnCheckedChangeListener;

    sget-object v1, Lmiuix/visualcheck/R$styleable;->VisualCheckGroup:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lmiuix/visualcheck/R$styleable;->VisualCheckGroup_checkedButton:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lmiuix/visual/check/VisualCheckGroup;->mCheckedId:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic access$200(Lmiuix/visual/check/VisualCheckGroup;)Lmiuix/visual/check/VisualCheckBox$OnCheckedChangeListener;
    .locals 0

    iget-object p0, p0, Lmiuix/visual/check/VisualCheckGroup;->mChildOnCheckedChangeListener:Lmiuix/visual/check/VisualCheckBox$OnCheckedChangeListener;

    return-object p0
.end method

.method static synthetic access$300(Lmiuix/visual/check/VisualCheckGroup;)Z
    .locals 0

    iget-boolean p0, p0, Lmiuix/visual/check/VisualCheckGroup;->mProtectFromCheckedChange:Z

    return p0
.end method

.method static synthetic access$302(Lmiuix/visual/check/VisualCheckGroup;Z)Z
    .locals 0

    iput-boolean p1, p0, Lmiuix/visual/check/VisualCheckGroup;->mProtectFromCheckedChange:Z

    return p1
.end method

.method static synthetic access$400(Lmiuix/visual/check/VisualCheckGroup;)I
    .locals 0

    iget p0, p0, Lmiuix/visual/check/VisualCheckGroup;->mCheckedId:I

    return p0
.end method

.method static synthetic access$500(Lmiuix/visual/check/VisualCheckGroup;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmiuix/visual/check/VisualCheckGroup;->setCheckedStateForView(IZ)V

    return-void
.end method

.method static synthetic access$600(Lmiuix/visual/check/VisualCheckGroup;I)V
    .locals 0

    invoke-direct {p0, p1}, Lmiuix/visual/check/VisualCheckGroup;->setCheckedId(I)V

    return-void
.end method

.method private setCheckedId(I)V
    .locals 1

    iput p1, p0, Lmiuix/visual/check/VisualCheckGroup;->mCheckedId:I

    iget-object p1, p0, Lmiuix/visual/check/VisualCheckGroup;->mOnCheckedChangeListener:Lmiuix/visual/check/VisualCheckGroup$OnCheckedChangeListener;

    if-eqz p1, :cond_0

    iget v0, p0, Lmiuix/visual/check/VisualCheckGroup;->mCheckedId:I

    invoke-interface {p1, p0, v0}, Lmiuix/visual/check/VisualCheckGroup$OnCheckedChangeListener;->onCheckedChanged(Lmiuix/visual/check/VisualCheckGroup;I)V

    :cond_0
    return-void
.end method

.method private setCheckedStateForView(IZ)V
    .locals 1

    invoke-virtual {p0, p1}, Lmiuix/visual/check/VisualCheckGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    instance-of v0, p1, Lmiuix/visual/check/VisualCheckBox;

    if-eqz v0, :cond_0

    check-cast p1, Lmiuix/visual/check/VisualCheckBox;

    invoke-virtual {p1, p2}, Lmiuix/visual/check/VisualCheckBox;->setChecked(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Lmiuix/visual/check/FlowLayout;->onFinishInflate()V

    iget v0, p0, Lmiuix/visual/check/VisualCheckGroup;->mCheckedId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lmiuix/visual/check/VisualCheckGroup;->mProtectFromCheckedChange:Z

    invoke-direct {p0, v0, v1}, Lmiuix/visual/check/VisualCheckGroup;->setCheckedStateForView(IZ)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiuix/visual/check/VisualCheckGroup;->mProtectFromCheckedChange:Z

    iget v0, p0, Lmiuix/visual/check/VisualCheckGroup;->mCheckedId:I

    invoke-direct {p0, v0}, Lmiuix/visual/check/VisualCheckGroup;->setCheckedId(I)V

    :cond_0
    return-void
.end method

.method public setOnCheckedChangeListener(Lmiuix/visual/check/VisualCheckGroup$OnCheckedChangeListener;)V
    .locals 0

    iput-object p1, p0, Lmiuix/visual/check/VisualCheckGroup;->mOnCheckedChangeListener:Lmiuix/visual/check/VisualCheckGroup$OnCheckedChangeListener;

    return-void
.end method
