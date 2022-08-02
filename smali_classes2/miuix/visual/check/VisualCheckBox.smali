.class public Lmiuix/visual/check/VisualCheckBox;
.super Landroid/widget/LinearLayout;
.source "VisualCheckBox.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/visual/check/VisualCheckBox$OnCheckedChangeListener;,
        Lmiuix/visual/check/VisualCheckBox$PassThroughHierarchyChangeListener;
    }
.end annotation


# instance fields
.field private mChecked:Z

.field private mOnCheckedChangeWidgetListener:Lmiuix/visual/check/VisualCheckBox$OnCheckedChangeListener;

.field private mPassThroughListener:Lmiuix/visual/check/VisualCheckBox$PassThroughHierarchyChangeListener;

.field private mVisualCheckItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiuix/visual/check/VisualCheckItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiuix/visual/check/VisualCheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmiuix/visual/check/VisualCheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lmiuix/visual/check/VisualCheckBox;->mVisualCheckItems:Ljava/util/List;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lmiuix/visual/check/VisualCheckBox;->setOrientation(I)V

    new-instance p1, Lmiuix/visual/check/VisualCheckBox$PassThroughHierarchyChangeListener;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lmiuix/visual/check/VisualCheckBox$PassThroughHierarchyChangeListener;-><init>(Lmiuix/visual/check/VisualCheckBox;Lmiuix/visual/check/VisualCheckBox$1;)V

    iput-object p1, p0, Lmiuix/visual/check/VisualCheckBox;->mPassThroughListener:Lmiuix/visual/check/VisualCheckBox$PassThroughHierarchyChangeListener;

    iget-object p1, p0, Lmiuix/visual/check/VisualCheckBox;->mPassThroughListener:Lmiuix/visual/check/VisualCheckBox$PassThroughHierarchyChangeListener;

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    return-void
.end method

.method static synthetic access$100(Lmiuix/visual/check/VisualCheckBox;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lmiuix/visual/check/VisualCheckBox;->mVisualCheckItems:Ljava/util/List;

    return-object p0
.end method

.method private notifyChecked(Z)V
    .locals 2

    iget-object v0, p0, Lmiuix/visual/check/VisualCheckBox;->mVisualCheckItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/visual/check/VisualCheckItem;

    invoke-interface {v1, p1}, Lmiuix/visual/check/VisualCheckItem;->onChecked(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyTouchEvent(Landroid/view/MotionEvent;)V
    .locals 2

    iget-object v0, p0, Lmiuix/visual/check/VisualCheckBox;->mVisualCheckItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/visual/check/VisualCheckItem;

    invoke-interface {v1, p0, p1}, Lmiuix/visual/check/VisualCheckItem;->onVisualCheckBoxTouchEvent(Lmiuix/visual/check/VisualCheckBox;Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private obtainDescriptionFromChild()Ljava/lang/CharSequence;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lmiuix/visual/check/VisualCheckBox;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p0, v0}, Lmiuix/visual/check/VisualCheckBox;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :cond_0
    instance-of v2, v1, Landroid/widget/TextView;

    if-eqz v2, :cond_1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    const-class v0, Lmiuix/visual/check/VisualCheckBox;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isChecked()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    iget-boolean v0, p0, Lmiuix/visual/check/VisualCheckBox;->mChecked:Z

    return v0
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    invoke-virtual {p0}, Lmiuix/visual/check/VisualCheckBox;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lmiuix/visual/check/VisualCheckBox;->obtainDescriptionFromChild()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lmiuix/visual/check/VisualCheckBox;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    iget-boolean v0, p0, Lmiuix/visual/check/VisualCheckBox;->mChecked:Z

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setChecked(Z)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    iget-boolean v0, p0, Lmiuix/visual/check/VisualCheckBox;->mChecked:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    iget-boolean v0, p0, Lmiuix/visual/check/VisualCheckBox;->mChecked:Z

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSelected(Z)V

    iget-boolean v0, p0, Lmiuix/visual/check/VisualCheckBox;->mChecked:Z

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    invoke-direct {p0}, Lmiuix/visual/check/VisualCheckBox;->obtainDescriptionFromChild()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-direct {p0}, Lmiuix/visual/check/VisualCheckBox;->obtainDescriptionFromChild()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lmiuix/visual/check/VisualCheckBox;->mVisualCheckItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-direct {p0, p1}, Lmiuix/visual/check/VisualCheckBox;->notifyTouchEvent(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lmiuix/visual/check/VisualCheckBox;->toggle()V

    sget p1, Lmiuix/view/HapticFeedbackConstants;->MIUI_MESH_NORMAL:I

    invoke-static {p0, p1}, Lmiuix/view/HapticCompat;->performHapticFeedback(Landroid/view/View;I)Z

    :cond_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public performClick()Z
    .locals 1

    invoke-virtual {p0}, Lmiuix/visual/check/VisualCheckBox;->toggle()V

    invoke-super {p0}, Landroid/widget/LinearLayout;->performClick()Z

    move-result v0

    return v0
.end method

.method public setChecked(Z)V
    .locals 1

    iget-boolean v0, p0, Lmiuix/visual/check/VisualCheckBox;->mChecked:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lmiuix/visual/check/VisualCheckBox;->mChecked:Z

    invoke-direct {p0, p1}, Lmiuix/visual/check/VisualCheckBox;->notifyChecked(Z)V

    iget-object p1, p0, Lmiuix/visual/check/VisualCheckBox;->mOnCheckedChangeWidgetListener:Lmiuix/visual/check/VisualCheckBox$OnCheckedChangeListener;

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lmiuix/visual/check/VisualCheckBox;->mChecked:Z

    invoke-interface {p1, p0, v0}, Lmiuix/visual/check/VisualCheckBox$OnCheckedChangeListener;->onCheckedChanged(Lmiuix/visual/check/VisualCheckBox;Z)V

    :cond_0
    return-void
.end method

.method setOnCheckedChangeWidgetListener(Lmiuix/visual/check/VisualCheckBox$OnCheckedChangeListener;)V
    .locals 0

    iput-object p1, p0, Lmiuix/visual/check/VisualCheckBox;->mOnCheckedChangeWidgetListener:Lmiuix/visual/check/VisualCheckBox$OnCheckedChangeListener;

    return-void
.end method

.method public toggle()V
    .locals 1

    invoke-virtual {p0}, Lmiuix/visual/check/VisualCheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lmiuix/visual/check/VisualCheckBox;->mChecked:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lmiuix/visual/check/VisualCheckBox;->setChecked(Z)V

    const v0, 0x8000

    invoke-virtual {p0, v0}, Lmiuix/visual/check/VisualCheckBox;->sendAccessibilityEvent(I)V

    :cond_0
    return-void
.end method
