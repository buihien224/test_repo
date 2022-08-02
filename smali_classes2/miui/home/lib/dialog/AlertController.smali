.class Lmiui/home/lib/dialog/AlertController;
.super Ljava/lang/Object;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/home/lib/dialog/AlertController$LayoutChangeListener;,
        Lmiui/home/lib/dialog/AlertController$CheckedItemAdapter;,
        Lmiui/home/lib/dialog/AlertController$ButtonInfo;,
        Lmiui/home/lib/dialog/AlertController$AlertParams;,
        Lmiui/home/lib/dialog/AlertController$ButtonHandler;
    }
.end annotation


# instance fields
.field mAdapter:Landroid/widget/ListAdapter;

.field private final mAlertDialogLayout:I

.field private final mButtonHandler:Landroid/view/View$OnClickListener;

.field mButtonNegative:Landroid/widget/Button;

.field mButtonNegativeMessage:Landroid/os/Message;

.field private mButtonNegativeText:Ljava/lang/CharSequence;

.field mButtonNeutral:Landroid/widget/Button;

.field mButtonNeutralMessage:Landroid/os/Message;

.field private mButtonNeutralText:Ljava/lang/CharSequence;

.field mButtonPositive:Landroid/widget/Button;

.field mButtonPositiveMessage:Landroid/os/Message;

.field private mButtonPositiveText:Ljava/lang/CharSequence;

.field private mCancelable:Z

.field private mCanceledOnTouchOutside:Z

.field private mCheckBoxMessage:Ljava/lang/CharSequence;

.field mCheckedItem:I

.field private mComment:Ljava/lang/CharSequence;

.field private mCommentView:Landroid/widget/TextView;

.field private final mContext:Landroid/content/Context;

.field private final mCreateThread:Ljava/lang/Thread;

.field private mCustomTitleView:Landroid/view/View;

.field final mDialog:Landroidx/appcompat/app/AppCompatDialog;

.field private mDialogContentLayout:I

.field private mDialogRootView:Lmiui/home/lib/dialog/widget/DialogRootView;

.field private mDimBg:Landroid/view/View;

.field private mExtraButtonList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiui/home/lib/dialog/AlertController$ButtonInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mFakeLandScreenMinorSize:I

.field mHandler:Landroid/os/Handler;

.field mHapticFeedbackEnabled:Z

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconId:I

.field private mInflatedView:Landroid/view/View;

.field private mInsetsAnimationPlayed:Z

.field private mIsChecked:Z

.field private mIsDebugEnabled:Z

.field private mIsDialogAnimating:Z

.field private mIsEnableImmersive:Z

.field private mLandscapePanel:Z

.field private final mLayoutChangeListener:Lmiui/home/lib/dialog/AlertController$LayoutChangeListener;

.field mListItemLayout:I

.field mListLayout:I

.field mListView:Landroid/widget/ListView;

.field private mMessage:Ljava/lang/CharSequence;

.field private mMessageView:Landroid/widget/TextView;

.field mMultiChoiceItemLayout:I

.field private mPanelAndImeMargin:I

.field private final mPanelMaxWidth:I

.field private final mPanelMaxWidthLand:I

.field private mPanelOriginLeftMargin:I

.field private mPanelOriginRightMargin:I

.field private mParentPanel:Lmiui/home/lib/dialog/widget/DialogParentPanel2;

.field private mPreferLandscape:Z

.field private mScreenMinorSize:I

.field private mScreenOrientation:I

.field private mScreenRealSize:Landroid/graphics/Point;

.field private mSetupWindowInsetsAnimation:Z

.field private mShowAnimListener:Lmiui/home/lib/dialog/AlertDialog$OnDialogShowAnimListener;

.field private mShowAnimListenerWrapper:Lmiui/home/lib/dialog/AlertDialog$OnDialogShowAnimListener;

.field private final mShowTitle:Z

.field mSingleChoiceItemLayout:I

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleView:Landroid/widget/TextView;

.field private mTreatAsLandConfig:Z

.field private mView:Landroid/view/View;

.field private mViewLayoutResId:I

.field private final mWindow:Landroid/view/Window;

.field private mWindowManager:Landroid/view/WindowManager;

.field private mWindowSize:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/appcompat/app/AppCompatDialog;Landroid/view/Window;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/home/lib/dialog/AlertController;->mIsDebugEnabled:Z

    iput v0, p0, Lmiui/home/lib/dialog/AlertController;->mIconId:I

    const/4 v1, -0x1

    iput v1, p0, Lmiui/home/lib/dialog/AlertController;->mCheckedItem:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lmiui/home/lib/dialog/AlertController;->mCancelable:Z

    iput-boolean v1, p0, Lmiui/home/lib/dialog/AlertController;->mCanceledOnTouchOutside:Z

    iput v0, p0, Lmiui/home/lib/dialog/AlertController;->mScreenOrientation:I

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, p0, Lmiui/home/lib/dialog/AlertController;->mWindowSize:Landroid/graphics/Point;

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, p0, Lmiui/home/lib/dialog/AlertController;->mScreenRealSize:Landroid/graphics/Point;

    new-instance v2, Lmiui/home/lib/dialog/AlertController$1;

    invoke-direct {v2, p0}, Lmiui/home/lib/dialog/AlertController$1;-><init>(Lmiui/home/lib/dialog/AlertController;)V

    iput-object v2, p0, Lmiui/home/lib/dialog/AlertController;->mShowAnimListenerWrapper:Lmiui/home/lib/dialog/AlertDialog$OnDialogShowAnimListener;

    iput-boolean v1, p0, Lmiui/home/lib/dialog/AlertController;->mIsEnableImmersive:Z

    new-instance v2, Lmiui/home/lib/dialog/AlertController$2;

    invoke-direct {v2, p0}, Lmiui/home/lib/dialog/AlertController$2;-><init>(Lmiui/home/lib/dialog/AlertController;)V

    iput-object v2, p0, Lmiui/home/lib/dialog/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    iput-boolean v0, p0, Lmiui/home/lib/dialog/AlertController;->mInsetsAnimationPlayed:Z

    iput-object p1, p0, Lmiui/home/lib/dialog/AlertController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lmiui/home/lib/dialog/AlertController;->mDialog:Landroidx/appcompat/app/AppCompatDialog;

    iput-object p3, p0, Lmiui/home/lib/dialog/AlertController;->mWindow:Landroid/view/Window;

    new-instance p3, Lmiui/home/lib/dialog/AlertController$ButtonHandler;

    invoke-direct {p3, p2}, Lmiui/home/lib/dialog/AlertController$ButtonHandler;-><init>(Landroid/content/DialogInterface;)V

    iput-object p3, p0, Lmiui/home/lib/dialog/AlertController;->mHandler:Landroid/os/Handler;

    new-instance p3, Lmiui/home/lib/dialog/AlertController$LayoutChangeListener;

    invoke-direct {p3, p0}, Lmiui/home/lib/dialog/AlertController$LayoutChangeListener;-><init>(Lmiui/home/lib/dialog/AlertController;)V

    iput-object p3, p0, Lmiui/home/lib/dialog/AlertController;->mLayoutChangeListener:Lmiui/home/lib/dialog/AlertController$LayoutChangeListener;

    invoke-direct {p0, p1}, Lmiui/home/lib/dialog/AlertController;->initScreenMinorSize(Landroid/content/Context;)V

    sget-object p3, Lmiuix/appcompat/R$styleable;->AlertDialog:[I

    const/4 v2, 0x0

    const v3, 0x101005d

    invoke-virtual {p1, v2, p3, v3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p3, Lmiuix/appcompat/R$styleable;->AlertDialog_layout:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lmiui/home/lib/dialog/AlertController;->mAlertDialogLayout:I

    sget p3, Lmiuix/appcompat/R$styleable;->AlertDialog_listLayout:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lmiui/home/lib/dialog/AlertController;->mListLayout:I

    sget p3, Lmiuix/appcompat/R$styleable;->AlertDialog_multiChoiceItemLayout:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lmiui/home/lib/dialog/AlertController;->mMultiChoiceItemLayout:I

    sget p3, Lmiuix/appcompat/R$styleable;->AlertDialog_singleChoiceItemLayout:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lmiui/home/lib/dialog/AlertController;->mSingleChoiceItemLayout:I

    sget p3, Lmiuix/appcompat/R$styleable;->AlertDialog_listItemLayout:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lmiui/home/lib/dialog/AlertController;->mListItemLayout:I

    sget p3, Lmiuix/appcompat/R$styleable;->AlertDialog_showTitle:I

    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lmiui/home/lib/dialog/AlertController;->mShowTitle:Z

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p2, v1}, Landroidx/appcompat/app/AppCompatDialog;->supportRequestWindowFeature(I)Z

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1c

    if-ge p1, p2, :cond_0

    invoke-direct {p0}, Lmiui/home/lib/dialog/AlertController;->isMiuiLegacyNotch()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lmiui/home/lib/dialog/AlertController;->mWindow:Landroid/view/Window;

    const-string p2, "addExtraFlags"

    new-array p3, v1, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, p3, v0

    new-array v1, v1, [Ljava/lang/Object;

    const/16 v2, 0x300

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-static {p1, p2, p3, v1}, Lmiuix/internal/util/ReflectUtil;->callObjectMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object p1, p0, Lmiui/home/lib/dialog/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lmiuix/appcompat/R$bool;->treat_as_land:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lmiui/home/lib/dialog/AlertController;->mTreatAsLandConfig:Z

    iget-object p1, p0, Lmiui/home/lib/dialog/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lmiui/home/lib/dialog/R$dimen;->miui_home_dialog_max_width:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lmiui/home/lib/dialog/AlertController;->mPanelMaxWidth:I

    iget-object p1, p0, Lmiui/home/lib/dialog/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lmiui/home/lib/dialog/R$dimen;->miui_home_dialog_max_width_land:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lmiui/home/lib/dialog/AlertController;->mPanelMaxWidthLand:I

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iput-object p1, p0, Lmiui/home/lib/dialog/AlertController;->mCreateThread:Ljava/lang/Thread;

    invoke-direct {p0}, Lmiui/home/lib/dialog/AlertController;->isDialogImeDebugEnabled()Z

    return-void
.end method

.method static synthetic access$002(Lmiui/home/lib/dialog/AlertController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lmiui/home/lib/dialog/AlertController;->mIsDialogAnimating:Z

    return p1
.end method

.method static synthetic access$100(Lmiui/home/lib/dialog/AlertController;)Lmiui/home/lib/dialog/AlertDialog$OnDialogShowAnimListener;
    .locals 0

    iget-object p0, p0, Lmiui/home/lib/dialog/AlertController;->mShowAnimListener:Lmiui/home/lib/dialog/AlertDialog$OnDialogShowAnimListener;

    return-object p0
.end method

.method static synthetic access$1102(Lmiui/home/lib/dialog/AlertController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lmiui/home/lib/dialog/AlertController;->mInsetsAnimationPlayed:Z

    return p1
.end method

.method static synthetic access$1200(Lmiui/home/lib/dialog/AlertController;)I
    .locals 0

    iget p0, p0, Lmiui/home/lib/dialog/AlertController;->mPanelAndImeMargin:I

    return p0
.end method

.method static synthetic access$1202(Lmiui/home/lib/dialog/AlertController;I)I
    .locals 0

    iput p1, p0, Lmiui/home/lib/dialog/AlertController;->mPanelAndImeMargin:I

    return p1
.end method

.method static synthetic access$1300(Lmiui/home/lib/dialog/AlertController;)I
    .locals 0

    invoke-direct {p0}, Lmiui/home/lib/dialog/AlertController;->getDialogPanelMargin()I

    move-result p0

    return p0
.end method

.method static synthetic access$1400(Lmiui/home/lib/dialog/AlertController;)Z
    .locals 0

    iget-boolean p0, p0, Lmiui/home/lib/dialog/AlertController;->mIsDebugEnabled:Z

    return p0
.end method

.method static synthetic access$1500(Lmiui/home/lib/dialog/AlertController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lmiui/home/lib/dialog/AlertController;->translateDialogPanel(I)V

    return-void
.end method

.method static synthetic access$1600(Lmiui/home/lib/dialog/AlertController;)Landroid/view/Window;
    .locals 0

    iget-object p0, p0, Lmiui/home/lib/dialog/AlertController;->mWindow:Landroid/view/Window;

    return-object p0
.end method

.method static synthetic access$1700(Lmiui/home/lib/dialog/AlertController;Landroid/view/WindowInsets;)V
    .locals 0

    invoke-direct {p0, p1}, Lmiui/home/lib/dialog/AlertController;->updateParentPanelMarginByWindowInsets(Landroid/view/WindowInsets;)V

    return-void
.end method

.method static synthetic access$1800(Lmiui/home/lib/dialog/AlertController;Landroid/view/WindowInsets;)V
    .locals 0

    invoke-direct {p0, p1}, Lmiui/home/lib/dialog/AlertController;->checkTranslateDialogPanel(Landroid/view/WindowInsets;)V

    return-void
.end method

.method static synthetic access$1900(Lmiui/home/lib/dialog/AlertController;)Z
    .locals 0

    invoke-direct {p0}, Lmiui/home/lib/dialog/AlertController;->isFreeFormMode()Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lmiui/home/lib/dialog/AlertController;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lmiui/home/lib/dialog/AlertController;->mExtraButtonList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$2000(Lmiui/home/lib/dialog/AlertController;)I
    .locals 0

    invoke-direct {p0}, Lmiui/home/lib/dialog/AlertController;->getDialogPanelExtraBottomPadding()I

    move-result p0

    return p0
.end method

.method static synthetic access$202(Lmiui/home/lib/dialog/AlertController;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lmiui/home/lib/dialog/AlertController;->mExtraButtonList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$2100(Lmiui/home/lib/dialog/AlertController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lmiui/home/lib/dialog/AlertController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$2200(Lmiui/home/lib/dialog/AlertController;)Lmiui/home/lib/dialog/widget/DialogRootView;
    .locals 0

    iget-object p0, p0, Lmiui/home/lib/dialog/AlertController;->mDialogRootView:Lmiui/home/lib/dialog/widget/DialogRootView;

    return-object p0
.end method

.method static synthetic access$700(Lmiui/home/lib/dialog/AlertController;)Lmiui/home/lib/dialog/widget/DialogParentPanel2;
    .locals 0

    iget-object p0, p0, Lmiui/home/lib/dialog/AlertController;->mParentPanel:Lmiui/home/lib/dialog/widget/DialogParentPanel2;

    return-object p0
.end method

.method static synthetic access$800(Lmiui/home/lib/dialog/AlertController;Landroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0, p1}, Lmiui/home/lib/dialog/AlertController;->updateContent(Landroid/view/ViewGroup;)V

    return-void
.end method

.method private addPressAnimInternal(Landroid/view/View;)V
    .locals 1

    invoke-static {}, Lmiuix/internal/util/AnimHelper;->isDialogDebugInAndroidUIThreadEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Lmiui/home/lib/dialog/widget/GroupButton;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lmiui/home/lib/dialog/widget/GroupButton;

    invoke-virtual {v0}, Lmiui/home/lib/dialog/widget/GroupButton;->getButtonSelectorBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lmiuix/internal/util/AnimHelper;->addPressAnim(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method

.method static canTextInput(Landroid/view/View;)Z
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    instance-of v0, p0, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    :cond_2
    if-lez v0, :cond_3

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lmiui/home/lib/dialog/AlertController;->canTextInput(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v1

    :cond_3
    return v2
.end method

.method private changeTitlePadding(Landroid/widget/TextView;)V
    .locals 4

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    return-void
.end method

.method private checkAndClearFocus()V
    .locals 1

    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    invoke-direct {p0}, Lmiui/home/lib/dialog/AlertController;->hideSoftIME()V

    :cond_0
    return-void
.end method

.method private checkThread()Z
    .locals 2

    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mCreateThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private checkTranslateDialogPanel(Landroid/view/WindowInsets;)V
    .locals 4

    iget-boolean v0, p0, Lmiui/home/lib/dialog/AlertController;->mIsDialogAnimating:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lmiui/home/lib/dialog/AlertController;->mSetupWindowInsetsAnimation:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lmiui/home/lib/dialog/AlertController;->mInsetsAnimationPlayed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lmiuix/core/util/MiuixUIUtils;->isInMultiWindowMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_0
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v0

    iget-boolean v1, p0, Lmiui/home/lib/dialog/AlertController;->mIsDebugEnabled:Z

    if-eqz v1, :cond_1

    const-string v1, "AlertController"

    const-string v2, "======================Debug for checkTranslateDialogPanel======================"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "AlertController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The imeInset info: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/graphics/Insets;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_2

    invoke-direct {p0, p1}, Lmiui/home/lib/dialog/AlertController;->updateParentPanelMarginByWindowInsets(Landroid/view/WindowInsets;)V

    :cond_2
    iget p1, v0, Landroid/graphics/Insets;->bottom:I

    const/4 v1, 0x0

    if-lez p1, :cond_8

    invoke-direct {p0}, Lmiui/home/lib/dialog/AlertController;->getDialogPanelMargin()I

    move-result p1

    int-to-float p1, p1

    iget-object v2, p0, Lmiui/home/lib/dialog/AlertController;->mParentPanel:Lmiui/home/lib/dialog/widget/DialogParentPanel2;

    invoke-virtual {v2}, Lmiui/home/lib/dialog/widget/DialogParentPanel2;->getTranslationY()F

    move-result v2

    add-float/2addr p1, v2

    float-to-int p1, p1

    iput p1, p0, Lmiui/home/lib/dialog/AlertController;->mPanelAndImeMargin:I

    iget p1, p0, Lmiui/home/lib/dialog/AlertController;->mPanelAndImeMargin:I

    if-gtz p1, :cond_3

    iput v1, p0, Lmiui/home/lib/dialog/AlertController;->mPanelAndImeMargin:I

    :cond_3
    iget-boolean p1, p0, Lmiui/home/lib/dialog/AlertController;->mTreatAsLandConfig:Z

    if-nez p1, :cond_6

    invoke-direct {p0}, Lmiui/home/lib/dialog/AlertController;->isRealTablet()Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    iget p1, p0, Lmiui/home/lib/dialog/AlertController;->mPanelAndImeMargin:I

    iget v2, v0, Landroid/graphics/Insets;->bottom:I

    if-ge p1, v2, :cond_5

    iget p1, p0, Lmiui/home/lib/dialog/AlertController;->mPanelAndImeMargin:I

    iget v0, v0, Landroid/graphics/Insets;->bottom:I

    sub-int/2addr p1, v0

    invoke-direct {p0, p1}, Lmiui/home/lib/dialog/AlertController;->translateDialogPanel(I)V

    goto :goto_1

    :cond_5
    invoke-direct {p0, v1}, Lmiui/home/lib/dialog/AlertController;->translateDialogPanel(I)V

    goto :goto_1

    :cond_6
    :goto_0
    iget p1, p0, Lmiui/home/lib/dialog/AlertController;->mPanelAndImeMargin:I

    iget v2, v0, Landroid/graphics/Insets;->bottom:I

    if-ge p1, v2, :cond_7

    iget p1, p0, Lmiui/home/lib/dialog/AlertController;->mPanelAndImeMargin:I

    iget v0, v0, Landroid/graphics/Insets;->bottom:I

    sub-int/2addr p1, v0

    invoke-direct {p0, p1}, Lmiui/home/lib/dialog/AlertController;->translateDialogPanel(I)V

    goto :goto_1

    :cond_7
    invoke-direct {p0, v1}, Lmiui/home/lib/dialog/AlertController;->translateDialogPanel(I)V

    goto :goto_1

    :cond_8
    iget-object p1, p0, Lmiui/home/lib/dialog/AlertController;->mParentPanel:Lmiui/home/lib/dialog/widget/DialogParentPanel2;

    invoke-virtual {p1}, Lmiui/home/lib/dialog/widget/DialogParentPanel2;->getTranslationY()F

    move-result p1

    const/4 v0, 0x0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_9

    invoke-direct {p0, v1}, Lmiui/home/lib/dialog/AlertController;->translateDialogPanel(I)V

    :cond_9
    :goto_1
    iget-boolean p1, p0, Lmiui/home/lib/dialog/AlertController;->mIsDebugEnabled:Z

    if-eqz p1, :cond_a

    const-string p1, "AlertController"

    const-string v0, "===================End of Debug for checkTranslateDialogPanel==================="

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    return-void
.end method

.method private cleanWindowInsetsAnimation()V
    .locals 2

    iget-boolean v0, p0, Lmiui/home/lib/dialog/AlertController;->mSetupWindowInsetsAnimation:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setWindowInsetsAnimationCallback(Landroid/view/WindowInsetsAnimation$Callback;)V

    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/home/lib/dialog/AlertController;->mSetupWindowInsetsAnimation:Z

    :cond_0
    return-void
.end method

.method private clearFitSystemWindow(Landroid/view/View;)V
    .locals 3

    instance-of v0, p1, Lmiui/home/lib/dialog/widget/DialogParentPanel2;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setFitsSystemWindows(Z)V

    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    :goto_0
    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lmiui/home/lib/dialog/AlertController;->clearFitSystemWindow(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private disableForceDark(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lmiuix/view/CompatViewMethod;->setForceDarkAllowed(Landroid/view/View;Z)V

    return-void
.end method

.method private getCutoutMode(II)I
    .locals 1

    const/4 v0, 0x2

    if-nez p2, :cond_1

    if-ne p1, v0, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    :cond_1
    :goto_0
    return p2
.end method

.method private getDialogPanelExtraBottomPadding()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private getDialogPanelMargin()I
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Lmiui/home/lib/dialog/AlertController;->mParentPanel:Lmiui/home/lib/dialog/widget/DialogParentPanel2;

    invoke-virtual {v1, v0}, Lmiui/home/lib/dialog/widget/DialogParentPanel2;->getLocationInWindow([I)V

    iget-object v1, p0, Lmiui/home/lib/dialog/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lmiui/home/lib/dialog/R$dimen;->miui_home_dialog_ime_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lmiui/home/lib/dialog/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    const/4 v3, 0x1

    aget v0, v0, v3

    iget-object v3, p0, Lmiui/home/lib/dialog/AlertController;->mParentPanel:Lmiui/home/lib/dialog/widget/DialogParentPanel2;

    invoke-virtual {v3}, Lmiui/home/lib/dialog/widget/DialogParentPanel2;->getHeight()I

    move-result v3

    add-int/2addr v0, v3

    sub-int/2addr v2, v0

    sub-int/2addr v2, v1

    return v2
.end method

.method private getGravity()I
    .locals 1

    invoke-direct {p0}, Lmiui/home/lib/dialog/AlertController;->isRealTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    goto :goto_0

    :cond_0
    const/16 v0, 0x51

    :goto_0
    return v0
.end method

.method private getPanelWidth(Z)I
    .locals 4

    sget v0, Lmiui/home/lib/dialog/R$layout;->miui_home_alert_dialog_content:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lmiui/home/lib/dialog/AlertController;->mLandscapePanel:Z

    iget-boolean v2, p0, Lmiui/home/lib/dialog/AlertController;->mPreferLandscape:Z

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lmiui/home/lib/dialog/AlertController;->shouldUseLandscapePanel()Z

    move-result v2

    if-eqz v2, :cond_0

    sget v0, Lmiui/home/lib/dialog/R$layout;->miui_home_alert_dialog_content_land:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lmiui/home/lib/dialog/AlertController;->mLandscapePanel:Z

    iget p1, p0, Lmiui/home/lib/dialog/AlertController;->mPanelMaxWidthLand:I

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lmiui/home/lib/dialog/AlertController;->shouldLimitWidth()Z

    move-result v2

    if-eqz v2, :cond_1

    iget p1, p0, Lmiui/home/lib/dialog/AlertController;->mPanelMaxWidth:I

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lmiui/home/lib/dialog/AlertController;->mTreatAsLandConfig:Z

    if-eqz p1, :cond_2

    iget p1, p0, Lmiui/home/lib/dialog/AlertController;->mFakeLandScreenMinorSize:I

    goto :goto_0

    :cond_2
    iget p1, p0, Lmiui/home/lib/dialog/AlertController;->mScreenMinorSize:I

    goto :goto_0

    :cond_3
    const/4 p1, -0x1

    :goto_0
    iget v2, p0, Lmiui/home/lib/dialog/AlertController;->mDialogContentLayout:I

    if-eq v2, v0, :cond_5

    iput v0, p0, Lmiui/home/lib/dialog/AlertController;->mDialogContentLayout:I

    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mParentPanel:Lmiui/home/lib/dialog/widget/DialogParentPanel2;

    if-eqz v0, :cond_4

    iget-object v2, p0, Lmiui/home/lib/dialog/AlertController;->mDialogRootView:Lmiui/home/lib/dialog/widget/DialogRootView;

    invoke-virtual {v2, v0}, Lmiui/home/lib/dialog/widget/DialogRootView;->removeView(Landroid/view/View;)V

    :cond_4
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v2, p0, Lmiui/home/lib/dialog/AlertController;->mDialogContentLayout:I

    iget-object v3, p0, Lmiui/home/lib/dialog/AlertController;->mDialogRootView:Lmiui/home/lib/dialog/widget/DialogRootView;

    invoke-virtual {v0, v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/home/lib/dialog/widget/DialogParentPanel2;

    iput-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mParentPanel:Lmiui/home/lib/dialog/widget/DialogParentPanel2;

    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mDialogRootView:Lmiui/home/lib/dialog/widget/DialogRootView;

    iget-object v1, p0, Lmiui/home/lib/dialog/AlertController;->mParentPanel:Lmiui/home/lib/dialog/widget/DialogParentPanel2;

    invoke-virtual {v0, v1}, Lmiui/home/lib/dialog/widget/DialogRootView;->addView(Landroid/view/View;)V

    :cond_5
    return p1
.end method

.method private getScreenOrientation()I
    .locals 3

    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mWindowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 v0, 0x2

    return v0
.end method

.method private hideSoftIME()V
    .locals 3

    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lmiui/home/lib/dialog/AlertController;->mParentPanel:Lmiui/home/lib/dialog/widget/DialogParentPanel2;

    invoke-virtual {v1}, Lmiui/home/lib/dialog/widget/DialogParentPanel2;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method private initScreenMinorSize(Landroid/content/Context;)V
    .locals 1

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mWindowManager:Landroid/view/WindowManager;

    invoke-direct {p0}, Lmiui/home/lib/dialog/AlertController;->updateMinorScreenSize()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lmiuix/appcompat/R$dimen;->fake_landscape_screen_minor_size:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lmiui/home/lib/dialog/AlertController;->mFakeLandScreenMinorSize:I

    return-void
.end method

.method private isCancelable()Z
    .locals 1

    iget-boolean v0, p0, Lmiui/home/lib/dialog/AlertController;->mCancelable:Z

    return v0
.end method

.method private isCanceledOnTouchOutside()Z
    .locals 1

    iget-boolean v0, p0, Lmiui/home/lib/dialog/AlertController;->mCanceledOnTouchOutside:Z

    return v0
.end method

.method private isDialogImeDebugEnabled()Z
    .locals 4

    const-string v0, ""

    :try_start_0
    const-string v1, "log.tag.alertdialog.ime.debug.enable"

    invoke-static {v1}, Lmiuix/animation/utils/CommonUtils;->readProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "AlertController"

    const-string v3, "can not access property log.tag.alertdialog.ime.enable, undebugable"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    const-string v1, "AlertController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Alert dialog ime debugEnable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "true"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lmiui/home/lib/dialog/AlertController;->mIsDebugEnabled:Z

    iget-boolean v0, p0, Lmiui/home/lib/dialog/AlertController;->mIsDebugEnabled:Z

    return v0
.end method

.method private isFreeFormMode()Z
    .locals 1

    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lmiuix/core/util/MiuixUIUtils;->isFreeformMode(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private isInPcMode()Z
    .locals 3

    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "synergy_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1
.end method

.method private isLandscape()Z
    .locals 1

    invoke-direct {p0}, Lmiui/home/lib/dialog/AlertController;->getScreenOrientation()I

    move-result v0

    invoke-direct {p0, v0}, Lmiui/home/lib/dialog/AlertController;->isLandscape(I)Z

    move-result v0

    return v0
.end method

.method private isLandscape(I)Z
    .locals 3

    iget-boolean v0, p0, Lmiui/home/lib/dialog/AlertController;->mTreatAsLandConfig:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x2

    const/4 v2, 0x0

    if-eq p1, v0, :cond_1

    return v2

    :cond_1
    invoke-direct {p0}, Lmiui/home/lib/dialog/AlertController;->isInPcMode()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lmiui/home/lib/dialog/AlertController;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mScreenRealSize:Landroid/graphics/Point;

    invoke-virtual {p1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget-object p1, p0, Lmiui/home/lib/dialog/AlertController;->mScreenRealSize:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->x:I

    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mScreenRealSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-le p1, v0, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    return v1

    :cond_3
    return v1
.end method

.method private isMiuiLegacyNotch()Z
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Lmiuix/internal/util/ReflectUtil;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v2, "getInt"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    new-array v3, v3, [Ljava/lang/Object;

    const-string v5, "ro.miui.notch"

    aput-object v5, v3, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v7

    invoke-static {v0, v1, v2, v4, v3}, Lmiuix/internal/util/ReflectUtil;->callStaticObjectMethod(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v7, :cond_0

    move v6, v7

    :cond_0
    return v6
.end method

.method private isRealTablet()Z
    .locals 1

    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lmiuix/internal/util/DeviceHelper;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lmiuix/internal/util/DeviceHelper;->isFoldDevice()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic lambda$installContent$0(Lmiui/home/lib/dialog/AlertController;Landroid/content/res/Configuration;)V
    .locals 0

    invoke-virtual {p0}, Lmiui/home/lib/dialog/AlertController;->onConfigurationChanged()V

    return-void
.end method

.method public static synthetic lambda$setupView$1(Lmiui/home/lib/dialog/AlertController;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lmiui/home/lib/dialog/AlertController;->isCancelable()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lmiui/home/lib/dialog/AlertController;->isCanceledOnTouchOutside()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lmiui/home/lib/dialog/AlertController;->hideSoftIME()V

    iget-object p1, p0, Lmiui/home/lib/dialog/AlertController;->mDialog:Landroidx/appcompat/app/AppCompatDialog;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDialog;->cancel()V

    :cond_0
    return-void
.end method

.method private reInitLandConfig()V
    .locals 2

    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/appcompat/R$bool;->treat_as_land:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lmiui/home/lib/dialog/AlertController;->mTreatAsLandConfig:Z

    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/appcompat/R$dimen;->fake_landscape_screen_minor_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lmiui/home/lib/dialog/AlertController;->mFakeLandScreenMinorSize:I

    invoke-direct {p0}, Lmiui/home/lib/dialog/AlertController;->updateMinorScreenSize()V

    return-void
.end method

.method private setupButtons(Landroid/view/ViewGroup;)V
    .locals 10

    const v0, 0x1020019

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v1, p0, Lmiui/home/lib/dialog/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-static {v0}, Lmiuix/appcompat/internal/util/EasyModeHelper;->updateTextViewSize(Landroid/widget/TextView;)V

    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    move v0, v2

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v3, p0, Lmiui/home/lib/dialog/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-direct {p0, v0}, Lmiui/home/lib/dialog/AlertController;->disableForceDark(Landroid/view/View;)V

    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-direct {p0, v0}, Lmiui/home/lib/dialog/AlertController;->addPressAnimInternal(Landroid/view/View;)V

    const/4 v0, 0x1

    :goto_0
    const v3, 0x102001a

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lmiui/home/lib/dialog/AlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v3, p0, Lmiui/home/lib/dialog/AlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v4, p0, Lmiui/home/lib/dialog/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lmiui/home/lib/dialog/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-static {v3}, Lmiuix/appcompat/internal/util/EasyModeHelper;->updateTextViewSize(Landroid/widget/TextView;)V

    iget-object v3, p0, Lmiui/home/lib/dialog/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lmiui/home/lib/dialog/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lmiui/home/lib/dialog/AlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v4, p0, Lmiui/home/lib/dialog/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lmiui/home/lib/dialog/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    iget-object v3, p0, Lmiui/home/lib/dialog/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-direct {p0, v3}, Lmiui/home/lib/dialog/AlertController;->disableForceDark(Landroid/view/View;)V

    iget-object v3, p0, Lmiui/home/lib/dialog/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-direct {p0, v3}, Lmiui/home/lib/dialog/AlertController;->addPressAnimInternal(Landroid/view/View;)V

    :goto_1
    const v3, 0x102001b

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lmiui/home/lib/dialog/AlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v3, p0, Lmiui/home/lib/dialog/AlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v4, p0, Lmiui/home/lib/dialog/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lmiui/home/lib/dialog/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-static {v3}, Lmiuix/appcompat/internal/util/EasyModeHelper;->updateTextViewSize(Landroid/widget/TextView;)V

    iget-object v3, p0, Lmiui/home/lib/dialog/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lmiui/home/lib/dialog/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2

    :cond_2
    iget-object v3, p0, Lmiui/home/lib/dialog/AlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v4, p0, Lmiui/home/lib/dialog/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lmiui/home/lib/dialog/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    iget-object v3, p0, Lmiui/home/lib/dialog/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-direct {p0, v3}, Lmiui/home/lib/dialog/AlertController;->disableForceDark(Landroid/view/View;)V

    iget-object v3, p0, Lmiui/home/lib/dialog/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-direct {p0, v3}, Lmiui/home/lib/dialog/AlertController;->addPressAnimInternal(Landroid/view/View;)V

    :goto_2
    iget-object v3, p0, Lmiui/home/lib/dialog/AlertController;->mExtraButtonList:Ljava/util/List;

    if-eqz v3, :cond_8

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, p0, Lmiui/home/lib/dialog/AlertController;->mExtraButtonList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/home/lib/dialog/AlertController$ButtonInfo;

    invoke-static {v4}, Lmiui/home/lib/dialog/AlertController$ButtonInfo;->access$300(Lmiui/home/lib/dialog/AlertController$ButtonInfo;)Lmiui/home/lib/dialog/widget/GroupButton;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-static {v4}, Lmiui/home/lib/dialog/AlertController$ButtonInfo;->access$300(Lmiui/home/lib/dialog/AlertController$ButtonInfo;)Lmiui/home/lib/dialog/widget/GroupButton;

    move-result-object v5

    invoke-virtual {v5}, Lmiui/home/lib/dialog/widget/GroupButton;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    instance-of v6, v5, Landroid/view/ViewGroup;

    if-eqz v6, :cond_3

    check-cast v5, Landroid/view/ViewGroup;

    invoke-static {v4}, Lmiui/home/lib/dialog/AlertController$ButtonInfo;->access$300(Lmiui/home/lib/dialog/AlertController$ButtonInfo;)Lmiui/home/lib/dialog/widget/GroupButton;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_3

    :cond_4
    iget-object v3, p0, Lmiui/home/lib/dialog/AlertController;->mExtraButtonList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/home/lib/dialog/AlertController$ButtonInfo;

    invoke-static {v4}, Lmiui/home/lib/dialog/AlertController$ButtonInfo;->access$300(Lmiui/home/lib/dialog/AlertController$ButtonInfo;)Lmiui/home/lib/dialog/widget/GroupButton;

    move-result-object v5

    if-nez v5, :cond_5

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v5, v2, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    new-instance v6, Lmiui/home/lib/dialog/widget/GroupButton;

    iget-object v7, p0, Lmiui/home/lib/dialog/AlertController;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    invoke-static {v4}, Lmiui/home/lib/dialog/AlertController$ButtonInfo;->access$900(Lmiui/home/lib/dialog/AlertController$ButtonInfo;)I

    move-result v9

    invoke-direct {v6, v7, v8, v9}, Lmiui/home/lib/dialog/widget/GroupButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-static {v4, v6}, Lmiui/home/lib/dialog/AlertController$ButtonInfo;->access$302(Lmiui/home/lib/dialog/AlertController$ButtonInfo;Lmiui/home/lib/dialog/widget/GroupButton;)Lmiui/home/lib/dialog/widget/GroupButton;

    invoke-static {v4}, Lmiui/home/lib/dialog/AlertController$ButtonInfo;->access$300(Lmiui/home/lib/dialog/AlertController$ButtonInfo;)Lmiui/home/lib/dialog/widget/GroupButton;

    move-result-object v6

    invoke-static {v4}, Lmiui/home/lib/dialog/AlertController$ButtonInfo;->access$500(Lmiui/home/lib/dialog/AlertController$ButtonInfo;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Lmiui/home/lib/dialog/widget/GroupButton;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v4}, Lmiui/home/lib/dialog/AlertController$ButtonInfo;->access$300(Lmiui/home/lib/dialog/AlertController$ButtonInfo;)Lmiui/home/lib/dialog/widget/GroupButton;

    move-result-object v6

    iget-object v7, p0, Lmiui/home/lib/dialog/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Lmiui/home/lib/dialog/widget/GroupButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {v4}, Lmiui/home/lib/dialog/AlertController$ButtonInfo;->access$300(Lmiui/home/lib/dialog/AlertController$ButtonInfo;)Lmiui/home/lib/dialog/widget/GroupButton;

    move-result-object v6

    invoke-virtual {v6, v5}, Lmiui/home/lib/dialog/widget/GroupButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {v4}, Lmiui/home/lib/dialog/AlertController$ButtonInfo;->access$300(Lmiui/home/lib/dialog/AlertController$ButtonInfo;)Lmiui/home/lib/dialog/widget/GroupButton;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lmiui/home/lib/dialog/widget/GroupButton;->setMaxLines(I)V

    invoke-static {v4}, Lmiui/home/lib/dialog/AlertController$ButtonInfo;->access$300(Lmiui/home/lib/dialog/AlertController$ButtonInfo;)Lmiui/home/lib/dialog/widget/GroupButton;

    move-result-object v5

    const/16 v6, 0x11

    invoke-virtual {v5, v6}, Lmiui/home/lib/dialog/widget/GroupButton;->setGravity(I)V

    :cond_5
    invoke-static {v4}, Lmiui/home/lib/dialog/AlertController$ButtonInfo;->access$400(Lmiui/home/lib/dialog/AlertController$ButtonInfo;)Landroid/os/Message;

    move-result-object v5

    if-nez v5, :cond_6

    iget-object v5, p0, Lmiui/home/lib/dialog/AlertController;->mHandler:Landroid/os/Handler;

    invoke-static {v4}, Lmiui/home/lib/dialog/AlertController$ButtonInfo;->access$600(Lmiui/home/lib/dialog/AlertController$ButtonInfo;)I

    move-result v6

    invoke-static {v4}, Lmiui/home/lib/dialog/AlertController$ButtonInfo;->access$1000(Lmiui/home/lib/dialog/AlertController$ButtonInfo;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-static {v4, v5}, Lmiui/home/lib/dialog/AlertController$ButtonInfo;->access$402(Lmiui/home/lib/dialog/AlertController$ButtonInfo;Landroid/os/Message;)Landroid/os/Message;

    :cond_6
    invoke-static {v4}, Lmiui/home/lib/dialog/AlertController$ButtonInfo;->access$300(Lmiui/home/lib/dialog/AlertController$ButtonInfo;)Lmiui/home/lib/dialog/widget/GroupButton;

    move-result-object v5

    invoke-virtual {v5}, Lmiui/home/lib/dialog/widget/GroupButton;->getVisibility()I

    move-result v5

    if-eq v5, v1, :cond_7

    add-int/lit8 v0, v0, 0x1

    invoke-static {v4}, Lmiui/home/lib/dialog/AlertController$ButtonInfo;->access$300(Lmiui/home/lib/dialog/AlertController$ButtonInfo;)Lmiui/home/lib/dialog/widget/GroupButton;

    move-result-object v5

    invoke-static {v5}, Lmiuix/appcompat/internal/util/EasyModeHelper;->updateTextViewSize(Landroid/widget/TextView;)V

    invoke-static {v4}, Lmiui/home/lib/dialog/AlertController$ButtonInfo;->access$300(Lmiui/home/lib/dialog/AlertController$ButtonInfo;)Lmiui/home/lib/dialog/widget/GroupButton;

    move-result-object v5

    invoke-direct {p0, v5}, Lmiui/home/lib/dialog/AlertController;->disableForceDark(Landroid/view/View;)V

    invoke-static {v4}, Lmiui/home/lib/dialog/AlertController$ButtonInfo;->access$300(Lmiui/home/lib/dialog/AlertController$ButtonInfo;)Lmiui/home/lib/dialog/widget/GroupButton;

    move-result-object v5

    invoke-direct {p0, v5}, Lmiui/home/lib/dialog/AlertController;->addPressAnimInternal(Landroid/view/View;)V

    :cond_7
    invoke-static {v4}, Lmiui/home/lib/dialog/AlertController$ButtonInfo;->access$300(Lmiui/home/lib/dialog/AlertController$ButtonInfo;)Lmiui/home/lib/dialog/widget/GroupButton;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_4

    :cond_8
    if-nez v0, :cond_9

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_5

    :cond_9
    move-object v0, p1

    check-cast v0, Lmiui/home/lib/dialog/widget/DialogButtonPanel;

    iget-boolean v1, p0, Lmiui/home/lib/dialog/AlertController;->mLandscapePanel:Z

    invoke-virtual {v0, v1}, Lmiui/home/lib/dialog/widget/DialogButtonPanel;->setForceVertical(Z)V

    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    :goto_5
    return-void
.end method

.method private setupCheckbox(Landroid/widget/CheckBox;)V
    .locals 1

    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mCheckBoxMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-boolean v0, p0, Lmiui/home/lib/dialog/AlertController;->mIsChecked:Z

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mCheckBoxMessage:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private setupContent(Landroid/view/ViewGroup;)V
    .locals 11

    const v0, 0x102002b

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lmiui/home/lib/dialog/AlertController;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_8

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lmiui/home/lib/dialog/AlertController;->setupCustomContent(Landroid/view/ViewGroup;)Z

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    const/4 v4, 0x1

    const/4 v5, -0x2

    const/4 v6, -0x1

    if-eqz v1, :cond_6

    sget v1, Lmiui/home/lib/dialog/R$id;->contentView:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v1, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v7, p0, Lmiui/home/lib/dialog/AlertController;->mListView:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lmiui/home/lib/dialog/AlertController;->mListView:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    iget-object v8, p0, Lmiui/home/lib/dialog/AlertController;->mListView:Landroid/widget/ListView;

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    iget-object v7, p0, Lmiui/home/lib/dialog/AlertController;->mListView:Landroid/widget/ListView;

    invoke-static {v7, v4}, Landroidx/core/view/ViewCompat;->setNestedScrollingEnabled(Landroid/view/View;Z)V

    iget-object v7, p0, Lmiui/home/lib/dialog/AlertController;->mListView:Landroid/widget/ListView;

    new-instance v8, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v8, v6, v5}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    invoke-virtual {v1, v7, v3, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object v7, p0, Lmiui/home/lib/dialog/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lmiui/home/lib/dialog/utils/WindowUtils;->getWindowSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v7

    iget-object v8, p0, Lmiui/home/lib/dialog/AlertController;->mContext:Landroid/content/Context;

    sget v9, Lmiuix/appcompat/R$attr;->dialogListPreferredItemHeight:I

    invoke-static {v8, v9}, Lmiuix/internal/util/AttributeResolver;->resolveDimensionPixelSize(Landroid/content/Context;I)I

    move-result v8

    iget-object v9, p0, Lmiui/home/lib/dialog/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v9}, Landroid/widget/ListAdapter;->getCount()I

    move-result v9

    mul-int/2addr v9, v8

    iget v7, v7, Landroid/graphics/Point;->y:I

    int-to-float v7, v7

    const v10, 0x3eb33333    # 0.35f

    mul-float/2addr v7, v10

    float-to-int v7, v7

    if-le v9, v7, :cond_2

    goto :goto_1

    :cond_2
    move v4, v3

    :goto_1
    if-nez v4, :cond_3

    iget-object v7, p0, Lmiui/home/lib/dialog/AlertController;->mListView:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    iput v5, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v8, p0, Lmiui/home/lib/dialog/AlertController;->mListView:Landroid/widget/ListView;

    invoke-virtual {v8, v7}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v7, v6, v3, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    :cond_3
    div-int/2addr v7, v8

    iget-object v9, p0, Lmiui/home/lib/dialog/AlertController;->mListView:Landroid/widget/ListView;

    mul-int/2addr v8, v7

    invoke-virtual {v9, v8}, Landroid/widget/ListView;->setMinimumHeight(I)V

    iget-object v7, p0, Lmiui/home/lib/dialog/AlertController;->mListView:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    iput v8, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v8, p0, Lmiui/home/lib/dialog/AlertController;->mListView:Landroid/widget/ListView;

    invoke-virtual {v8, v7}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, 0x0

    invoke-direct {v7, v6, v5, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_2
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, v6, v5}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    invoke-virtual {p1, v1, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    sget v0, Lmiui/home/lib/dialog/R$id;->contentView:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_4

    invoke-direct {p0, v0}, Lmiui/home/lib/dialog/AlertController;->setupContentView(Landroid/view/ViewGroup;)V

    :cond_4
    check-cast p1, Lmiui/home/lib/dialog/widget/NestedScrollViewExpander;

    if-nez v4, :cond_5

    goto :goto_3

    :cond_5
    move-object v1, v2

    :goto_3
    invoke-virtual {p1, v1}, Lmiui/home/lib/dialog/widget/NestedScrollViewExpander;->setExpandView(Landroid/view/View;)V

    goto :goto_5

    :cond_6
    sget v1, Lmiui/home/lib/dialog/R$id;->contentView:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lmiui/home/lib/dialog/AlertController;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_7
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lmiui/home/lib/dialog/AlertController;->mContext:Landroid/content/Context;

    sget v2, Lmiuix/appcompat/R$attr;->dialogListPreferredItemHeight:I

    invoke-static {v1, v2}, Lmiuix/internal/util/AttributeResolver;->resolveDimensionPixelSize(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setMinimumHeight(I)V

    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mListView:Landroid/widget/ListView;

    invoke-static {v0, v4}, Landroidx/core/view/ViewCompat;->setNestedScrollingEnabled(Landroid/view/View;Z)V

    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mListView:Landroid/widget/ListView;

    new-instance v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v1, v6, v5}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    check-cast p1, Lmiui/home/lib/dialog/widget/NestedScrollViewExpander;

    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1, v0}, Lmiui/home/lib/dialog/widget/NestedScrollViewExpander;->setExpandView(Landroid/view/View;)V

    goto :goto_5

    :cond_8
    sget v1, Lmiui/home/lib/dialog/R$id;->contentView:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_9

    invoke-direct {p0, v1}, Lmiui/home/lib/dialog/AlertController;->setupContentView(Landroid/view/ViewGroup;)V

    :cond_9
    if-eqz v0, :cond_a

    invoke-direct {p0, v0}, Lmiui/home/lib/dialog/AlertController;->setupCustomContent(Landroid/view/ViewGroup;)Z

    move-result v3

    :cond_a
    check-cast p1, Lmiui/home/lib/dialog/widget/NestedScrollViewExpander;

    if-eqz v3, :cond_b

    goto :goto_4

    :cond_b
    move-object v0, v2

    :goto_4
    invoke-virtual {p1, v0}, Lmiui/home/lib/dialog/widget/NestedScrollViewExpander;->setExpandView(Landroid/view/View;)V

    :goto_5
    return-void
.end method

.method private setupContentView(Landroid/view/ViewGroup;)V
    .locals 2

    sget v0, Lmiuix/appcompat/R$id;->message:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mMessageView:Landroid/widget/TextView;

    sget v0, Lmiui/home/lib/dialog/R$id;->comment:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mCommentView:Landroid/widget/TextView;

    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lmiui/home/lib/dialog/AlertController;->mMessage:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lmiui/home/lib/dialog/AlertController;->mCommentView:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mComment:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private setupCustomContent(Landroid/view/ViewGroup;)Z
    .locals 4

    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mInflatedView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mInflatedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Lmiui/home/lib/dialog/AlertController;->mInflatedView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iput-object v1, p0, Lmiui/home/lib/dialog/AlertController;->mInflatedView:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mView:Landroid/view/View;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    move-object v1, v0

    goto :goto_0

    :cond_1
    iget v0, p0, Lmiui/home/lib/dialog/AlertController;->mViewLayoutResId:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v1, p0, Lmiui/home/lib/dialog/AlertController;->mViewLayoutResId:I

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lmiui/home/lib/dialog/AlertController;->mInflatedView:Landroid/view/View;

    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    const/4 v2, 0x1

    :cond_3
    if-eqz v2, :cond_4

    invoke-static {v1}, Lmiui/home/lib/dialog/AlertController;->canTextInput(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mWindow:Landroid/view/Window;

    const/high16 v3, 0x20000

    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setFlags(II)V

    :cond_5
    if-eqz v2, :cond_7

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_6
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_1

    :cond_7
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :goto_1
    return v2
.end method

.method private setupImmersiveWindow()V
    .locals 4

    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mWindow:Landroid/view/Window;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mWindow:Landroid/view/Window;

    sget v1, Lmiuix/appcompat/R$color;->miuix_appcompat_transparent:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mWindow:Landroid/view/Window;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mWindow:Landroid/view/Window;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mWindow:Landroid/view/Window;

    const v2, -0x7ffff700

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-le v0, v2, :cond_2

    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mDialog:Landroidx/appcompat/app/AppCompatDialog;

    check-cast v0, Lmiui/home/lib/dialog/AlertDialog;

    invoke-virtual {v0}, Lmiui/home/lib/dialog/AlertDialog;->getAssociatedActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lmiui/home/lib/dialog/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-direct {p0}, Lmiui/home/lib/dialog/AlertController;->getScreenOrientation()I

    move-result v3

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    invoke-direct {p0, v3, v0}, Lmiui/home/lib/dialog/AlertController;->getCutoutMode(II)I

    move-result v0

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lmiui/home/lib/dialog/AlertController;->getScreenOrientation()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    :goto_0
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    :cond_2
    :goto_1
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lmiui/home/lib/dialog/AlertController;->clearFitSystemWindow(Landroid/view/View;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v0, v2, :cond_3

    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsSides(I)V

    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mDialog:Landroidx/appcompat/app/AppCompatDialog;

    check-cast v0, Lmiui/home/lib/dialog/AlertDialog;

    invoke-virtual {v0}, Lmiui/home/lib/dialog/AlertDialog;->getAssociatedActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v1, 0x400

    and-int/2addr v0, v1

    if-nez v0, :cond_3

    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    :cond_3
    return-void
.end method

.method private setupNonImmersiveWindow()V
    .locals 5

    invoke-direct {p0}, Lmiui/home/lib/dialog/AlertController;->isLandscape()Z

    move-result v0

    invoke-direct {p0, v0}, Lmiui/home/lib/dialog/AlertController;->getPanelWidth(Z)I

    move-result v0

    iget-object v1, p0, Lmiui/home/lib/dialog/AlertController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lmiui/home/lib/dialog/AlertController;->mWindowSize:Landroid/graphics/Point;

    invoke-static {v1, v2}, Lmiui/home/lib/dialog/utils/WindowUtils;->getWindowSize(Landroid/content/Context;Landroid/graphics/Point;)V

    invoke-direct {p0}, Lmiui/home/lib/dialog/AlertController;->shouldLimitWidth()Z

    move-result v1

    const/4 v2, 0x2

    if-nez v1, :cond_0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiui/home/lib/dialog/R$dimen;->miui_home_dialog_width_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lmiui/home/lib/dialog/AlertController;->mWindowSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    mul-int/2addr v0, v2

    sub-int v0, v1, v0

    :cond_0
    invoke-direct {p0}, Lmiui/home/lib/dialog/AlertController;->getGravity()I

    move-result v1

    iget-object v3, p0, Lmiui/home/lib/dialog/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v3, v1}, Landroid/view/Window;->setGravity(I)V

    and-int/lit8 v1, v1, 0x50

    if-lez v1, :cond_1

    iget-object v1, p0, Lmiui/home/lib/dialog/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lmiui/home/lib/dialog/R$dimen;->miui_home_dialog_bottom_margin:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v3, p0, Lmiui/home/lib/dialog/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    int-to-float v1, v1

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v1, v4

    iget-object v4, p0, Lmiui/home/lib/dialog/AlertController;->mWindowSize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    div-float/2addr v1, v4

    iput v1, v3, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    :cond_1
    iget-object v1, p0, Lmiui/home/lib/dialog/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    iget-object v1, p0, Lmiui/home/lib/dialog/AlertController;->mWindow:Landroid/view/Window;

    const v2, 0x3e99999a    # 0.3f

    invoke-virtual {v1, v2}, Landroid/view/Window;->setDimAmount(F)V

    iget-object v1, p0, Lmiui/home/lib/dialog/AlertController;->mWindow:Landroid/view/Window;

    const/4 v2, -0x2

    invoke-virtual {v1, v0, v2}, Landroid/view/Window;->setLayout(II)V

    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mWindow:Landroid/view/Window;

    sget v1, Lmiuix/appcompat/R$color;->miuix_appcompat_transparent:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    invoke-direct {p0}, Lmiui/home/lib/dialog/AlertController;->isRealTablet()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mWindow:Landroid/view/Window;

    sget v1, Lmiui/home/lib/dialog/R$style;->Home_Animation_Dialog_Center:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    :cond_2
    return-void
.end method

.method private setupTitle(Landroid/view/ViewGroup;)V
    .locals 7

    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mWindow:Landroid/view/Window;

    const v1, 0x1020006

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lmiui/home/lib/dialog/AlertController;->mCustomTitleView:Landroid/view/View;

    const/16 v2, 0x8

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmiui/home/lib/dialog/AlertController;->mCustomTitleView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v3, p0, Lmiui/home/lib/dialog/AlertController;->mCustomTitleView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v1, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v3, p0, Lmiui/home/lib/dialog/AlertController;->mCustomTitleView:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lmiui/home/lib/dialog/AlertController;->mWindow:Landroid/view/Window;

    sget v1, Lmiui/home/lib/dialog/R$id;->alertTitle:I

    invoke-virtual {p1, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lmiui/home/lib/dialog/AlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lmiui/home/lib/dialog/AlertController;->mShowTitle:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lmiui/home/lib/dialog/AlertController;->mWindow:Landroid/view/Window;

    sget v3, Lmiui/home/lib/dialog/R$id;->alertTitle:I

    invoke-virtual {v1, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lmiui/home/lib/dialog/AlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v1, p0, Lmiui/home/lib/dialog/AlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v3, p0, Lmiui/home/lib/dialog/AlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v1, p0, Lmiui/home/lib/dialog/AlertController;->mIconId:I

    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lmiui/home/lib/dialog/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lmiui/home/lib/dialog/AlertController;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v3

    invoke-virtual {v0}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v4

    invoke-virtual {v0}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v5

    invoke-virtual {v0}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v6

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    if-eq p1, v2, :cond_5

    iget-object p1, p0, Lmiui/home/lib/dialog/AlertController;->mTitleView:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lmiui/home/lib/dialog/AlertController;->changeTitlePadding(Landroid/widget/TextView;)V

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lmiui/home/lib/dialog/AlertController;->mWindow:Landroid/view/Window;

    sget v3, Lmiui/home/lib/dialog/R$id;->alertTitle:I

    invoke-virtual {v1, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_5
    :goto_1
    return-void
.end method

.method private setupView(Z)V
    .locals 4

    invoke-virtual {p0}, Lmiui/home/lib/dialog/AlertController;->isDialogImmersive()Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mDimBg:Landroid/view/View;

    new-instance v2, Lmiui/home/lib/dialog/-$$Lambda$AlertController$vg0h7pz-mYHDK1VSNp8OiL1FXd0;

    invoke-direct {v2, p0}, Lmiui/home/lib/dialog/-$$Lambda$AlertController$vg0h7pz-mYHDK1VSNp8OiL1FXd0;-><init>(Lmiui/home/lib/dialog/AlertController;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lmiui/home/lib/dialog/AlertController;->updateDialogPanel()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mDimBg:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    if-nez p1, :cond_2

    iget-boolean p1, p0, Lmiui/home/lib/dialog/AlertController;->mPreferLandscape:Z

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lmiui/home/lib/dialog/AlertController;->mParentPanel:Lmiui/home/lib/dialog/widget/DialogParentPanel2;

    new-instance v0, Lmiui/home/lib/dialog/AlertController$3;

    invoke-direct {v0, p0}, Lmiui/home/lib/dialog/AlertController$3;-><init>(Lmiui/home/lib/dialog/AlertController;)V

    invoke-virtual {p1, v0}, Lmiui/home/lib/dialog/widget/DialogParentPanel2;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_3

    :cond_2
    :goto_1
    iget-object p1, p0, Lmiui/home/lib/dialog/AlertController;->mParentPanel:Lmiui/home/lib/dialog/widget/DialogParentPanel2;

    sget v0, Lmiui/home/lib/dialog/R$id;->topPanel:I

    invoke-virtual {p1, v0}, Lmiui/home/lib/dialog/widget/DialogParentPanel2;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mParentPanel:Lmiui/home/lib/dialog/widget/DialogParentPanel2;

    sget v2, Lmiui/home/lib/dialog/R$id;->contentPanel:I

    invoke-virtual {v0, v2}, Lmiui/home/lib/dialog/widget/DialogParentPanel2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Lmiui/home/lib/dialog/AlertController;->mParentPanel:Lmiui/home/lib/dialog/widget/DialogParentPanel2;

    sget v3, Lmiui/home/lib/dialog/R$id;->buttonPanel:I

    invoke-virtual {v2, v3}, Lmiui/home/lib/dialog/widget/DialogParentPanel2;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    invoke-direct {p0, v0}, Lmiui/home/lib/dialog/AlertController;->setupContent(Landroid/view/ViewGroup;)V

    :cond_3
    if-eqz v2, :cond_4

    invoke-direct {p0, v2}, Lmiui/home/lib/dialog/AlertController;->setupButtons(Landroid/view/ViewGroup;)V

    :cond_4
    if-eqz p1, :cond_5

    invoke-direct {p0, p1}, Lmiui/home/lib/dialog/AlertController;->setupTitle(Landroid/view/ViewGroup;)V

    :cond_5
    const/4 v0, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v3

    if-eq v3, v1, :cond_6

    move v1, v0

    goto :goto_2

    :cond_6
    move v1, v2

    :goto_2
    if-eqz v1, :cond_9

    const/4 v1, 0x0

    iget-object v3, p0, Lmiui/home/lib/dialog/AlertController;->mMessage:Ljava/lang/CharSequence;

    if-nez v3, :cond_7

    iget-object v3, p0, Lmiui/home/lib/dialog/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v3, :cond_8

    :cond_7
    sget v1, Lmiuix/appcompat/R$id;->titleDividerNoCustom:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    :cond_8
    if-eqz v1, :cond_9

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    iget-object p1, p0, Lmiui/home/lib/dialog/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz p1, :cond_a

    iget-object v1, p0, Lmiui/home/lib/dialog/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_a

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget v1, p0, Lmiui/home/lib/dialog/AlertController;->mCheckedItem:I

    const/4 v2, -0x1

    if-le v1, v2, :cond_a

    invoke-virtual {p1, v1, v0}, Landroid/widget/ListView;->setItemChecked(IZ)V

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setSelection(I)V

    :cond_a
    iget-object p1, p0, Lmiui/home/lib/dialog/AlertController;->mParentPanel:Lmiui/home/lib/dialog/widget/DialogParentPanel2;

    const v0, 0x1020001

    invoke-virtual {p1, v0}, Lmiui/home/lib/dialog/widget/DialogParentPanel2;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    if-eqz p1, :cond_b

    invoke-direct {p0, p1}, Lmiui/home/lib/dialog/AlertController;->setupCheckbox(Landroid/widget/CheckBox;)V

    :cond_b
    :goto_3
    return-void
.end method

.method private setupWindow()V
    .locals 1

    invoke-virtual {p0}, Lmiui/home/lib/dialog/AlertController;->isDialogImmersive()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lmiui/home/lib/dialog/AlertController;->setupImmersiveWindow()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lmiui/home/lib/dialog/AlertController;->setupNonImmersiveWindow()V

    :goto_0
    return-void
.end method

.method private setupWindowInsetsAnimation()V
    .locals 3

    invoke-virtual {p0}, Lmiui/home/lib/dialog/AlertController;->isDialogImmersive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit8 v0, v0, 0xf

    or-int/lit8 v0, v0, 0x30

    iget-object v1, p0, Lmiui/home/lib/dialog/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    new-instance v0, Lmiui/home/lib/dialog/AlertController$4;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lmiui/home/lib/dialog/AlertController$4;-><init>(Lmiui/home/lib/dialog/AlertController;I)V

    iget-object v2, p0, Lmiui/home/lib/dialog/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setWindowInsetsAnimationCallback(Landroid/view/WindowInsetsAnimation$Callback;)V

    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v2, Lmiui/home/lib/dialog/AlertController$5;

    invoke-direct {v2, p0}, Lmiui/home/lib/dialog/AlertController$5;-><init>(Lmiui/home/lib/dialog/AlertController;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    iput-boolean v1, p0, Lmiui/home/lib/dialog/AlertController;->mSetupWindowInsetsAnimation:Z

    return-void
.end method

.method private shouldLimitWidth()Z
    .locals 2

    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    const/16 v1, 0x178

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private shouldUseLandscapePanel()Z
    .locals 5

    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v3, p0, Lmiui/home/lib/dialog/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    iget-object v3, p0, Lmiui/home/lib/dialog/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_2
    iget-object v3, p0, Lmiui/home/lib/dialog/AlertController;->mExtraButtonList:Ljava/util/List;

    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v0, v3

    :cond_3
    if-nez v0, :cond_4

    return v2

    :cond_4
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lmiui/home/lib/dialog/AlertController;->mWindowSize:Landroid/graphics/Point;

    invoke-static {v0, v3}, Lmiui/home/lib/dialog/utils/WindowUtils;->getWindowSize(Landroid/content/Context;Landroid/graphics/Point;)V

    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mWindowSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lmiui/home/lib/dialog/AlertController;->mWindowSize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    iget v4, p0, Lmiui/home/lib/dialog/AlertController;->mPanelMaxWidthLand:I

    if-ge v0, v4, :cond_5

    return v2

    :cond_5
    mul-int/lit8 v0, v0, 0x2

    if-gt v0, v3, :cond_6

    return v2

    :cond_6
    iget-boolean v0, p0, Lmiui/home/lib/dialog/AlertController;->mPreferLandscape:Z

    if-eqz v0, :cond_7

    return v1

    :cond_7
    return v2
.end method

.method private translateDialogPanel(I)V
    .locals 3

    iget-boolean v0, p0, Lmiui/home/lib/dialog/AlertController;->mIsDebugEnabled:Z

    if-eqz v0, :cond_0

    const-string v0, "AlertController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The DialogPanel transitionY for : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mParentPanel:Lmiui/home/lib/dialog/widget/DialogParentPanel2;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Lmiui/home/lib/dialog/widget/DialogParentPanel2;->setTranslationY(F)V

    return-void
.end method

.method private updateContent(Landroid/view/ViewGroup;)V
    .locals 7

    const v0, 0x102002b

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v3

    if-lez v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    iget-object v4, p0, Lmiui/home/lib/dialog/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lmiui/home/lib/dialog/utils/WindowUtils;->getWindowSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v4

    iget-object v5, p0, Lmiui/home/lib/dialog/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v5, :cond_3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lmiui/home/lib/dialog/AlertController;->mContext:Landroid/content/Context;

    sget v5, Lmiuix/appcompat/R$attr;->dialogListPreferredItemHeight:I

    invoke-static {v3, v5}, Lmiuix/internal/util/AttributeResolver;->resolveDimensionPixelSize(Landroid/content/Context;I)I

    move-result v3

    iget-object v5, p0, Lmiui/home/lib/dialog/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    mul-int/2addr v5, v3

    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    const v6, 0x3eb33333    # 0.35f

    mul-float/2addr v4, v6

    float-to-int v4, v4

    if-le v5, v4, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    const/4 v5, -0x2

    if-nez v1, :cond_2

    iget-object v1, p0, Lmiui/home/lib/dialog/AlertController;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v3, p0, Lmiui/home/lib/dialog/AlertController;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    move-object v1, p1

    check-cast v1, Lmiui/home/lib/dialog/widget/NestedScrollViewExpander;

    invoke-virtual {v1, v0}, Lmiui/home/lib/dialog/widget/NestedScrollViewExpander;->setExpandView(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/ViewGroup;->requestLayout()V

    goto :goto_2

    :cond_2
    div-int/2addr v4, v3

    iget-object v1, p0, Lmiui/home/lib/dialog/AlertController;->mListView:Landroid/widget/ListView;

    mul-int/2addr v3, v4

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setMinimumHeight(I)V

    iget-object v1, p0, Lmiui/home/lib/dialog/AlertController;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p0, Lmiui/home/lib/dialog/AlertController;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v2, 0x0

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object v0, p1

    check-cast v0, Lmiui/home/lib/dialog/widget/NestedScrollViewExpander;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/home/lib/dialog/widget/NestedScrollViewExpander;->setExpandView(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_3
    :goto_2
    return-void
.end method

.method private updateDialogPanel()V
    .locals 3

    invoke-direct {p0}, Lmiui/home/lib/dialog/AlertController;->isLandscape()Z

    move-result v0

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p0, v0}, Lmiui/home/lib/dialog/AlertController;->getPanelWidth(Z)I

    move-result v0

    const/4 v2, -0x2

    invoke-direct {v1, v0, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-direct {p0}, Lmiui/home/lib/dialog/AlertController;->getGravity()I

    move-result v0

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-direct {p0}, Lmiui/home/lib/dialog/AlertController;->shouldLimitWidth()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lmiui/home/lib/dialog/R$dimen;->miui_home_dialog_width_margin:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :goto_0
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v0, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v0, p0, Lmiui/home/lib/dialog/AlertController;->mPanelOriginLeftMargin:I

    iget v0, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iput v0, p0, Lmiui/home/lib/dialog/AlertController;->mPanelOriginRightMargin:I

    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mParentPanel:Lmiui/home/lib/dialog/widget/DialogParentPanel2;

    invoke-virtual {v0, v1}, Lmiui/home/lib/dialog/widget/DialogParentPanel2;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateMinorScreenSize()V
    .locals 3

    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v1, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v2, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    iget v0, v0, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v0, v0

    const/high16 v2, 0x43200000    # 160.0f

    div-float/2addr v0, v2

    mul-float/2addr v1, v0

    float-to-int v0, v1

    if-lez v0, :cond_0

    iput v0, p0, Lmiui/home/lib/dialog/AlertController;->mScreenMinorSize:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iget-object v1, p0, Lmiui/home/lib/dialog/AlertController;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lmiui/home/lib/dialog/AlertController;->mScreenMinorSize:I

    :goto_0
    return-void
.end method

.method private updateParentPanelMarginByWindowInsets(Landroid/view/WindowInsets;)V
    .locals 9

    invoke-direct {p0}, Lmiui/home/lib/dialog/AlertController;->isRealTablet()Z

    move-result v0

    if-nez v0, :cond_a

    if-nez p1, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v0

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v1

    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v2

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object p1

    iget-boolean v3, p0, Lmiui/home/lib/dialog/AlertController;->mIsDebugEnabled:Z

    if-eqz v3, :cond_1

    const-string v3, "AlertController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateParentPanel navigationBar "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v3, p0, Lmiui/home/lib/dialog/AlertController;->mParentPanel:Lmiui/home/lib/dialog/widget/DialogParentPanel2;

    invoke-virtual {v3}, Lmiui/home/lib/dialog/widget/DialogParentPanel2;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, v1, Landroid/graphics/Insets;->top:I

    iget-object v4, p0, Lmiui/home/lib/dialog/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lmiui/home/lib/dialog/R$dimen;->miui_home_dialog_bottom_margin:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v5, v2, Landroid/graphics/Insets;->top:I

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v5, p0, Lmiui/home/lib/dialog/AlertController;->mParentPanel:Lmiui/home/lib/dialog/widget/DialogParentPanel2;

    invoke-virtual {v5}, Lmiui/home/lib/dialog/widget/DialogParentPanel2;->getX()F

    move-result v5

    float-to-int v5, v5

    iget-object v6, p0, Lmiui/home/lib/dialog/AlertController;->mDimBg:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lmiui/home/lib/dialog/AlertController;->mParentPanel:Lmiui/home/lib/dialog/widget/DialogParentPanel2;

    invoke-virtual {v7}, Lmiui/home/lib/dialog/widget/DialogParentPanel2;->getX()F

    move-result v7

    sub-float/2addr v6, v7

    iget-object v7, p0, Lmiui/home/lib/dialog/AlertController;->mParentPanel:Lmiui/home/lib/dialog/widget/DialogParentPanel2;

    invoke-virtual {v7}, Lmiui/home/lib/dialog/widget/DialogParentPanel2;->getWidth()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v6, v7

    float-to-int v6, v6

    iget v7, v2, Landroid/graphics/Insets;->left:I

    iget v8, v0, Landroid/graphics/Insets;->left:I

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    const/4 v8, 0x0

    if-lt v5, v7, :cond_2

    iget v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_0

    :cond_2
    sub-int/2addr v7, v5

    iget v5, p0, Lmiui/home/lib/dialog/AlertController;->mPanelOriginLeftMargin:I

    sub-int/2addr v7, v5

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    :goto_0
    iget v2, v2, Landroid/graphics/Insets;->right:I

    iget v7, v0, Landroid/graphics/Insets;->right:I

    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-lt v6, v2, :cond_3

    iget v2, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_1

    :cond_3
    sub-int/2addr v2, v6

    iget v6, p0, Lmiui/home/lib/dialog/AlertController;->mPanelOriginRightMargin:I

    sub-int/2addr v2, v6

    invoke-static {v8, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    :goto_1
    iget v0, v0, Landroid/graphics/Insets;->bottom:I

    add-int/2addr v4, v0

    iget v0, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const/4 v6, 0x1

    if-eq v0, v1, :cond_4

    iput v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move v8, v6

    :cond_4
    iget v0, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    if-eq v0, v4, :cond_5

    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move v8, v6

    :cond_5
    iget v0, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-eq v0, v5, :cond_6

    iput v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move v8, v6

    :cond_6
    iget v0, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-eq v0, v2, :cond_7

    iput v2, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_2

    :cond_7
    move v6, v8

    :goto_2
    if-eqz v6, :cond_8

    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mParentPanel:Lmiui/home/lib/dialog/widget/DialogParentPanel2;

    invoke-virtual {v0}, Lmiui/home/lib/dialog/widget/DialogParentPanel2;->requestLayout()V

    :cond_8
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mDimBg:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget v2, p1, Landroid/graphics/Insets;->bottom:I

    if-eq v1, v2, :cond_9

    iget p1, p1, Landroid/graphics/Insets;->bottom:I

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-object p1, p0, Lmiui/home/lib/dialog/AlertController;->mDimBg:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_9
    return-void

    :cond_a
    :goto_3
    return-void
.end method

.method private updateWindowCutoutMode()V
    .locals 3

    invoke-direct {p0}, Lmiui/home/lib/dialog/AlertController;->getScreenOrientation()I

    move-result v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-le v1, v2, :cond_2

    iget v1, p0, Lmiui/home/lib/dialog/AlertController;->mScreenOrientation:I

    if-eq v1, v0, :cond_2

    iput v0, p0, Lmiui/home/lib/dialog/AlertController;->mScreenOrientation:I

    iget-object v1, p0, Lmiui/home/lib/dialog/AlertController;->mDialog:Landroidx/appcompat/app/AppCompatDialog;

    check-cast v1, Lmiui/home/lib/dialog/AlertDialog;

    invoke-virtual {v1}, Lmiui/home/lib/dialog/AlertDialog;->getAssociatedActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    invoke-direct {p0, v0, v1}, Lmiui/home/lib/dialog/AlertController;->getCutoutMode(II)I

    move-result v0

    iget-object v1, p0, Lmiui/home/lib/dialog/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    if-eq v1, v0, :cond_2

    iget-object v1, p0, Lmiui/home/lib/dialog/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mDialog:Landroidx/appcompat/app/AppCompatDialog;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lmiui/home/lib/dialog/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lmiui/home/lib/dialog/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lmiui/home/lib/dialog/AlertController;->getScreenOrientation()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_0
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mDialog:Landroidx/appcompat/app/AppCompatDialog;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lmiui/home/lib/dialog/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lmiui/home/lib/dialog/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public dismiss(Lmiui/home/lib/dialog/dialoganim/DialogAnimHelper$OnDismiss;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lmiui/home/lib/dialog/AlertController;->cleanWindowInsetsAnimation()V

    :cond_0
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mParentPanel:Lmiui/home/lib/dialog/widget/DialogParentPanel2;

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lmiui/home/lib/dialog/dialoganim/DialogAnimHelper$OnDismiss;->end()V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {v0}, Lmiui/home/lib/dialog/widget/DialogParentPanel2;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lmiui/home/lib/dialog/AlertController;->checkAndClearFocus()V

    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mParentPanel:Lmiui/home/lib/dialog/widget/DialogParentPanel2;

    iget-object v1, p0, Lmiui/home/lib/dialog/AlertController;->mDimBg:Landroid/view/View;

    invoke-static {v0, v1, p1}, Lmiui/home/lib/dialog/dialoganim/DialogAnimHelper;->executeDismissAnim(Landroid/view/View;Landroid/view/View;Lmiui/home/lib/dialog/dialoganim/DialogAnimHelper$OnDismiss;)V

    goto :goto_0

    :cond_3
    const-string p1, "AlertController"

    const-string v0, "dialog is not attached to window when dismiss is invoked"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object p1, p0, Lmiui/home/lib/dialog/AlertController;->mDialog:Landroidx/appcompat/app/AppCompatDialog;

    check-cast p1, Lmiui/home/lib/dialog/AlertDialog;

    invoke-virtual {p1}, Lmiui/home/lib/dialog/AlertDialog;->realDismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "AlertController"

    const-string v1, "Not catch the dialog will throw the illegalArgumentException (In Case cause the crash , we expect it should be caught)"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getButton(I)Landroid/widget/Button;
    .locals 3

    packed-switch p1, :pswitch_data_0

    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mExtraButtonList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mExtraButtonList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Lmiui/home/lib/dialog/AlertController;->mButtonPositive:Landroid/widget/Button;

    return-object p1

    :pswitch_1
    iget-object p1, p0, Lmiui/home/lib/dialog/AlertController;->mButtonNegative:Landroid/widget/Button;

    return-object p1

    :pswitch_2
    iget-object p1, p0, Lmiui/home/lib/dialog/AlertController;->mButtonNeutral:Landroid/widget/Button;

    return-object p1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/home/lib/dialog/AlertController$ButtonInfo;

    invoke-static {v1}, Lmiui/home/lib/dialog/AlertController$ButtonInfo;->access$600(Lmiui/home/lib/dialog/AlertController$ButtonInfo;)I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-static {v1}, Lmiui/home/lib/dialog/AlertController$ButtonInfo;->access$300(Lmiui/home/lib/dialog/AlertController$ButtonInfo;)Lmiui/home/lib/dialog/widget/GroupButton;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getIconAttributeResId(I)I
    .locals 3

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iget-object v1, p0, Lmiui/home/lib/dialog/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget p1, v0, Landroid/util/TypedValue;->resourceId:I

    return p1
.end method

.method public installContent()V
    .locals 2

    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mDialog:Landroidx/appcompat/app/AppCompatDialog;

    iget v1, p0, Lmiui/home/lib/dialog/AlertController;->mAlertDialogLayout:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatDialog;->setContentView(I)V

    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mWindow:Landroid/view/Window;

    sget v1, Lmiui/home/lib/dialog/R$id;->dialog_root_view:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/home/lib/dialog/widget/DialogRootView;

    iput-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mDialogRootView:Lmiui/home/lib/dialog/widget/DialogRootView;

    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mWindow:Landroid/view/Window;

    sget v1, Lmiuix/appcompat/R$id;->dialog_dim_bg:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mDimBg:Landroid/view/View;

    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mDialogRootView:Lmiui/home/lib/dialog/widget/DialogRootView;

    new-instance v1, Lmiui/home/lib/dialog/-$$Lambda$AlertController$KSR4Iim-5HlqEvwMO_0HmAORZhM;

    invoke-direct {v1, p0}, Lmiui/home/lib/dialog/-$$Lambda$AlertController$KSR4Iim-5HlqEvwMO_0HmAORZhM;-><init>(Lmiui/home/lib/dialog/AlertController;)V

    invoke-virtual {v0, v1}, Lmiui/home/lib/dialog/widget/DialogRootView;->setConfigurationChangedCallback(Lmiui/home/lib/dialog/widget/DialogRootView$ConfigurationChangedCallback;)V

    invoke-direct {p0}, Lmiui/home/lib/dialog/AlertController;->setupWindow()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lmiui/home/lib/dialog/AlertController;->setupView(Z)V

    return-void
.end method

.method public isChecked()Z
    .locals 2

    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mWindow:Landroid/view/Window;

    const v1, 0x1020001

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    iput-boolean v0, p0, Lmiui/home/lib/dialog/AlertController;->mIsChecked:Z

    return v0
.end method

.method isDialogImmersive()Z
    .locals 2

    iget-boolean v0, p0, Lmiui/home/lib/dialog/AlertController;->mIsEnableImmersive:Z

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onAttachedToWindow()V
    .locals 2

    invoke-direct {p0}, Lmiui/home/lib/dialog/AlertController;->reInitLandConfig()V

    invoke-virtual {p0}, Lmiui/home/lib/dialog/AlertController;->isDialogImmersive()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lmiui/home/lib/dialog/AlertController;->updateDialogPanel()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lmiui/home/lib/dialog/AlertController;->setupNonImmersiveWindow()V

    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_1

    invoke-direct {p0}, Lmiui/home/lib/dialog/AlertController;->setupWindowInsetsAnimation()V

    :cond_1
    return-void
.end method

.method public onConfigurationChanged()V
    .locals 3

    invoke-direct {p0}, Lmiui/home/lib/dialog/AlertController;->checkThread()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "AlertController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dialog is created in thread:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmiui/home/lib/dialog/AlertController;->mCreateThread:Ljava/lang/Thread;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", but onConfigurationChanged is called from different thread:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", so this onConfigurationChanged call should be ignore"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Lmiui/home/lib/dialog/AlertController;->isDialogImmersive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lmiui/home/lib/dialog/AlertController;->mLayoutChangeListener:Lmiui/home/lib/dialog/AlertController$LayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_1
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lmiui/home/lib/dialog/AlertController;->reInitLandConfig()V

    invoke-virtual {p0}, Lmiui/home/lib/dialog/AlertController;->isDialogImmersive()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lmiui/home/lib/dialog/AlertController;->updateWindowCutoutMode()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lmiui/home/lib/dialog/AlertController;->setupNonImmersiveWindow()V

    :goto_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmiui/home/lib/dialog/AlertController;->setupView(Z)V

    :cond_3
    invoke-virtual {p0}, Lmiui/home/lib/dialog/AlertController;->isDialogImmersive()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lmiui/home/lib/dialog/AlertController;->mLayoutChangeListener:Lmiui/home/lib/dialog/AlertController$LayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_4
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 4

    invoke-static {}, Lmiuix/internal/util/AnimHelper;->isDialogDebugInAndroidUIThreadEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/view/View;

    iget-object v1, p0, Lmiui/home/lib/dialog/AlertController;->mParentPanel:Lmiui/home/lib/dialog/widget/DialogParentPanel2;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    iget-object v3, p0, Lmiui/home/lib/dialog/AlertController;->mDimBg:Landroid/view/View;

    aput-object v3, v0, v1

    invoke-static {v0}, Lmiuix/animation/Folme;->clean([Ljava/lang/Object;)V

    invoke-direct {p0, v2}, Lmiui/home/lib/dialog/AlertController;->translateDialogPanel(I)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 4

    invoke-virtual {p0}, Lmiui/home/lib/dialog/AlertController;->isDialogImmersive()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lmiui/home/lib/dialog/AlertController;->reInitLandConfig()V

    invoke-direct {p0}, Lmiui/home/lib/dialog/AlertController;->updateWindowCutoutMode()V

    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mParentPanel:Lmiui/home/lib/dialog/widget/DialogParentPanel2;

    iget-object v1, p0, Lmiui/home/lib/dialog/AlertController;->mDimBg:Landroid/view/View;

    invoke-direct {p0}, Lmiui/home/lib/dialog/AlertController;->isLandscape()Z

    move-result v2

    iget-object v3, p0, Lmiui/home/lib/dialog/AlertController;->mShowAnimListenerWrapper:Lmiui/home/lib/dialog/AlertDialog$OnDialogShowAnimListener;

    invoke-static {v0, v1, v2, v3}, Lmiui/home/lib/dialog/dialoganim/DialogAnimHelper;->executeShowAnim(Landroid/view/View;Landroid/view/View;ZLmiui/home/lib/dialog/AlertDialog$OnDialogShowAnimListener;)V

    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lmiui/home/lib/dialog/AlertController;->mLayoutChangeListener:Lmiui/home/lib/dialog/AlertController$LayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    invoke-virtual {p0}, Lmiui/home/lib/dialog/AlertController;->isDialogImmersive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lmiui/home/lib/dialog/AlertController;->mLayoutChangeListener:Lmiui/home/lib/dialog/AlertController$LayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_0
    return-void
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V
    .locals 0

    if-nez p4, :cond_0

    if-eqz p3, :cond_0

    iget-object p4, p0, Lmiui/home/lib/dialog/AlertController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p4, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    :cond_0
    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Button does not exist"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    iput-object p2, p0, Lmiui/home/lib/dialog/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    iput-object p4, p0, Lmiui/home/lib/dialog/AlertController;->mButtonPositiveMessage:Landroid/os/Message;

    goto :goto_0

    :pswitch_1
    iput-object p2, p0, Lmiui/home/lib/dialog/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    iput-object p4, p0, Lmiui/home/lib/dialog/AlertController;->mButtonNegativeMessage:Landroid/os/Message;

    goto :goto_0

    :pswitch_2
    iput-object p2, p0, Lmiui/home/lib/dialog/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    iput-object p4, p0, Lmiui/home/lib/dialog/AlertController;->mButtonNeutralMessage:Landroid/os/Message;

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setCancelable(Z)V
    .locals 0

    iput-boolean p1, p0, Lmiui/home/lib/dialog/AlertController;->mCancelable:Z

    return-void
.end method

.method public setCanceledOnTouchOutside(Z)V
    .locals 0

    iput-boolean p1, p0, Lmiui/home/lib/dialog/AlertController;->mCanceledOnTouchOutside:Z

    return-void
.end method

.method public setCheckBox(ZLjava/lang/CharSequence;)V
    .locals 0

    iput-boolean p1, p0, Lmiui/home/lib/dialog/AlertController;->mIsChecked:Z

    iput-object p2, p0, Lmiui/home/lib/dialog/AlertController;->mCheckBoxMessage:Ljava/lang/CharSequence;

    return-void
.end method

.method public setComment(Ljava/lang/CharSequence;)V
    .locals 1

    iput-object p1, p0, Lmiui/home/lib/dialog/AlertController;->mComment:Ljava/lang/CharSequence;

    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mCommentView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setCustomTitle(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lmiui/home/lib/dialog/AlertController;->mCustomTitleView:Landroid/view/View;

    return-void
.end method

.method setEnableImmersive(Z)V
    .locals 0

    iput-boolean p1, p0, Lmiui/home/lib/dialog/AlertController;->mIsEnableImmersive:Z

    return-void
.end method

.method public setIcon(I)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    iput p1, p0, Lmiui/home/lib/dialog/AlertController;->mIconId:I

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lmiui/home/lib/dialog/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x0

    iput p1, p0, Lmiui/home/lib/dialog/AlertController;->mIconId:I

    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1

    iput-object p1, p0, Lmiui/home/lib/dialog/AlertController;->mMessage:Ljava/lang/CharSequence;

    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method setPreferLandscape(Z)V
    .locals 0

    iput-boolean p1, p0, Lmiui/home/lib/dialog/AlertController;->mPreferLandscape:Z

    return-void
.end method

.method public setShowAnimListener(Lmiui/home/lib/dialog/AlertDialog$OnDialogShowAnimListener;)V
    .locals 0

    iput-object p1, p0, Lmiui/home/lib/dialog/AlertController;->mShowAnimListener:Lmiui/home/lib/dialog/AlertDialog$OnDialogShowAnimListener;

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    iput-object p1, p0, Lmiui/home/lib/dialog/AlertController;->mTitle:Ljava/lang/CharSequence;

    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setView(I)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/home/lib/dialog/AlertController;->mView:Landroid/view/View;

    iput p1, p0, Lmiui/home/lib/dialog/AlertController;->mViewLayoutResId:I

    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lmiui/home/lib/dialog/AlertController;->mView:Landroid/view/View;

    const/4 p1, 0x0

    iput p1, p0, Lmiui/home/lib/dialog/AlertController;->mViewLayoutResId:I

    return-void
.end method
