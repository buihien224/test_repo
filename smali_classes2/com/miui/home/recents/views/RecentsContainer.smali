.class public Lcom/miui/home/recents/views/RecentsContainer;
.super Landroid/widget/FrameLayout;
.source "RecentsContainer.java"

# interfaces
.implements Lcom/miui/home/smallwindow/BadgeCheckedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/recents/views/RecentsContainer$RecentsHandler;
    }
.end annotation


# static fields
.field private static ANIMATE_DURATION:I = 0x12c

.field private static BUTTOM_INTERVAL:I = 0x1f4


# instance fields
.field private final mAllInsets:Landroid/graphics/Rect;

.field mBackground:Landroid/widget/FrameLayout;

.field private mButtonEdit:Landroid/widget/ImageButton;

.field private mClearAnimView:Lcom/miui/home/recents/views/CircleAndTickAnimView;

.field private mCompleteButton:Landroid/widget/Button;

.field private mCurrentOrientation:I

.field private mEditView:Lcom/miui/home/smallwindow/SmallWindowEditView;

.field private mEmptyTextView:Landroid/widget/TextView;

.field private mExitMultiModeBtn:Landroid/widget/Button;

.field private mExternalRam:F

.field private mFakeNavBar:Lcom/miui/home/recents/views/FakeNavigationBarView;

.field private mFoldScreenModeObserver:Lcom/miui/home/launcher/common/FoldScreenModeObserver;

.field private mFreeAtFirst:J

.field public mFreeBeforeClean:J

.field private mHandler:Landroid/os/Handler;

.field private mIsAddExitMultiModeBtn:Z

.field private mIsExitRecentsAnimating:Z

.field private mIsFsAppToHomeAnimating:Z

.field private mIsInLandscapeOverview:Z

.field private mIsInMultiWindowMode:Z

.field private mIsLauncherStableVisible:Z

.field private mIsLauncherVisible:Z

.field private mIsNeedSkipTouch:Z

.field private mIsOneKeyCleanAnimating:Z

.field private mIsOpenExternalRam:I

.field private mIsRecentsRecommendViewVisible:Z

.field private mIsShowMemInfo:Z

.field private mIsShowRecommendBySettings:Z

.field private mIsShowSmallWindowRecyclerView:Z

.field private mIsSupportSmallWindow:Z

.field private mLastClick:J

.field private mLauncherStableVisibleChecker:Ljava/lang/Runnable;

.field private mMemoryAndClearContainer:Landroid/view/ViewGroup;

.field private mOpenExternalRamObserver:Landroid/database/ContentObserver;

.field private mPackageNamesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRecentMenuView:Lcom/miui/home/recents/views/RecentMenuView;

.field private mRecentsContainerRotation:I

.field private mRecentsDecorations:Lcom/miui/home/recents/views/RecentsDecorations;

.field private final mRecentsDrawnEventListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private mRecentsRecommendView:Lcom/miui/home/recents/views/RecentsRecommendView;

.field private mRecentsView:Lcom/miui/home/recents/views/RecentsView;

.field private mSelectedList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedView:Lcom/miui/home/smallwindow/SmallWindowSelectedView;

.field private mSeparatorForMemoryInfo:Landroid/view/View;

.field private mShowMemInfoObserver:Landroid/database/ContentObserver;

.field private mShowRecommendObserver:Landroid/database/ContentObserver;

.field private mSmallWindowContainer:Landroid/widget/LinearLayout;

.field private mSmallWindowEdit:Landroid/widget/LinearLayout;

.field private mSmallWindowEditContent:Landroid/widget/TextView;

.field private mSmallWindowListRecyclerView:Lcom/miui/home/smallwindow/SmallWindowListRecyclerView;

.field private mSuggestionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTmp:[F

.field private mTotalMemory:J

.field private mTxtMemoryContainer:Landroid/view/ViewGroup;

.field private mTxtMemoryInfo1:Landroid/widget/TextView;

.field private mTxtMemoryInfo2:Landroid/widget/TextView;

.field private mTxtSmallWindow:Landroid/widget/TextView;

.field private mTxtSmallWindowContainer:Lcom/miui/home/recents/views/AdaptiveLinearLayout;

.field private final mVisualRotationAllInsets:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/home/recents/views/RecentsContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/recents/views/RecentsContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/miui/home/recents/views/RecentsContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isSupportSmallWindow()Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFoldDevice()Z

    move-result p2

    if-nez p2, :cond_0

    sget-boolean p2, Lcom/miui/home/launcher/ApplicationConfig;->sIsSupportRelayInRecents:Z

    if-nez p2, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPocoLauncher()Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    move p2, p3

    :goto_0
    iput-boolean p2, p0, Lcom/miui/home/recents/views/RecentsContainer;->mIsSupportSmallWindow:Z

    new-instance p2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p2, p0, Lcom/miui/home/recents/views/RecentsContainer;->mSelectedList:Ljava/util/List;

    new-instance p2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p2, p0, Lcom/miui/home/recents/views/RecentsContainer;->mSuggestionList:Ljava/util/List;

    new-instance p2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p2, p0, Lcom/miui/home/recents/views/RecentsContainer;->mPackageNamesList:Ljava/util/List;

    new-instance p2, Lcom/miui/home/recents/views/RecentsContainer$RecentsHandler;

    invoke-direct {p2, p0}, Lcom/miui/home/recents/views/RecentsContainer$RecentsHandler;-><init>(Lcom/miui/home/recents/views/RecentsContainer;)V

    iput-object p2, p0, Lcom/miui/home/recents/views/RecentsContainer;->mHandler:Landroid/os/Handler;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mLastClick:J

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/miui/home/recents/views/RecentsContainer;->mAllInsets:Landroid/graphics/Rect;

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/miui/home/recents/views/RecentsContainer;->mVisualRotationAllInsets:Landroid/graphics/Rect;

    iput p3, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentsContainerRotation:I

    new-instance p2, Lcom/miui/home/recents/views/RecentsContainer$7;

    iget-object p4, p0, Lcom/miui/home/recents/views/RecentsContainer;->mHandler:Landroid/os/Handler;

    invoke-direct {p2, p0, p4}, Lcom/miui/home/recents/views/RecentsContainer$7;-><init>(Lcom/miui/home/recents/views/RecentsContainer;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/miui/home/recents/views/RecentsContainer;->mShowRecommendObserver:Landroid/database/ContentObserver;

    new-instance p2, Lcom/miui/home/recents/views/RecentsContainer$8;

    iget-object p4, p0, Lcom/miui/home/recents/views/RecentsContainer;->mHandler:Landroid/os/Handler;

    invoke-direct {p2, p0, p4}, Lcom/miui/home/recents/views/RecentsContainer$8;-><init>(Lcom/miui/home/recents/views/RecentsContainer;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/miui/home/recents/views/RecentsContainer;->mShowMemInfoObserver:Landroid/database/ContentObserver;

    new-instance p2, Lcom/miui/home/recents/views/RecentsContainer$9;

    iget-object p4, p0, Lcom/miui/home/recents/views/RecentsContainer;->mHandler:Landroid/os/Handler;

    invoke-direct {p2, p0, p4}, Lcom/miui/home/recents/views/RecentsContainer$9;-><init>(Lcom/miui/home/recents/views/RecentsContainer;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/miui/home/recents/views/RecentsContainer;->mOpenExternalRamObserver:Landroid/database/ContentObserver;

    iput-boolean p3, p0, Lcom/miui/home/recents/views/RecentsContainer;->mIsNeedSkipTouch:Z

    const/4 p2, 0x2

    new-array p2, p2, [F

    iput-object p2, p0, Lcom/miui/home/recents/views/RecentsContainer;->mTmp:[F

    new-instance p2, Lcom/miui/home/recents/views/RecentsContainer$15;

    invoke-direct {p2, p0}, Lcom/miui/home/recents/views/RecentsContainer$15;-><init>(Lcom/miui/home/recents/views/RecentsContainer;)V

    iput-object p2, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentsDrawnEventListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    new-instance p2, Lcom/miui/home/recents/views/RecentsContainer$18;

    invoke-direct {p2, p0}, Lcom/miui/home/recents/views/RecentsContainer$18;-><init>(Lcom/miui/home/recents/views/RecentsContainer;)V

    iput-object p2, p0, Lcom/miui/home/recents/views/RecentsContainer;->mLauncherStableVisibleChecker:Ljava/lang/Runnable;

    invoke-static {}, Lmiui/util/HardwareInfo;->getTotalPhysicalMemory()J

    move-result-wide v0

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mTotalMemory:J

    invoke-static {}, Lcom/miui/home/recents/views/RecentsContainer;->getBdSize()F

    move-result p2

    iput p2, p0, Lcom/miui/home/recents/views/RecentsContainer;->mExternalRam:F

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string p4, "isExternalRamOn"

    invoke-static {p2, p4, p3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/miui/home/recents/views/RecentsContainer;->mIsOpenExternalRam:I

    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isUseSimpleAnim()Z

    move-result p2

    if-eqz p2, :cond_1

    new-instance p2, Landroid/widget/FrameLayout;

    invoke-direct {p2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/miui/home/recents/views/RecentsContainer;->mBackground:Landroid/widget/FrameLayout;

    iget-object p2, p0, Lcom/miui/home/recents/views/RecentsContainer;->mBackground:Landroid/widget/FrameLayout;

    const p3, 0x7f060135

    invoke-virtual {p1, p3}, Landroid/content/Context;->getColor(I)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    iget-object p2, p0, Lcom/miui/home/recents/views/RecentsContainer;->mBackground:Landroid/widget/FrameLayout;

    const/4 p3, -0x1

    invoke-virtual {p0, p2, p3, p3}, Lcom/miui/home/recents/views/RecentsContainer;->addView(Landroid/view/View;II)V

    :cond_1
    sget-boolean p2, Lcom/miui/home/launcher/DeviceConfig;->IS_FOLD_DEVICE:Z

    if-eqz p2, :cond_2

    new-instance p2, Lcom/miui/home/launcher/common/FoldScreenModeObserver;

    invoke-direct {p2}, Lcom/miui/home/launcher/common/FoldScreenModeObserver;-><init>()V

    iput-object p2, p0, Lcom/miui/home/recents/views/RecentsContainer;->mFoldScreenModeObserver:Lcom/miui/home/launcher/common/FoldScreenModeObserver;

    :cond_2
    invoke-static {p1}, Lcom/miui/home/recents/util/RemovingSmallWindowFromRecents;->updateShouldToast(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/recents/views/RecentsContainer;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentsContainer;->cleanInRecents()V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/home/recents/views/RecentsContainer;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/recents/views/RecentsContainer;->updateSmallWindowMode(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/miui/home/recents/views/RecentsContainer;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/miui/home/recents/views/RecentsContainer;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentsContainer;->doClearAnim()V

    return-void
.end method

.method static synthetic access$1202(Lcom/miui/home/recents/views/RecentsContainer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/home/recents/views/RecentsContainer;->mIsOneKeyCleanAnimating:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/miui/home/recents/views/RecentsContainer;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentsContainer;->endForClear()V

    return-void
.end method

.method static synthetic access$1400(Lcom/miui/home/recents/views/RecentsContainer;)J
    .locals 2

    iget-wide v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mFreeAtFirst:J

    return-wide v0
.end method

.method static synthetic access$1500(Lcom/miui/home/recents/views/RecentsContainer;)J
    .locals 2

    iget-wide v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mTotalMemory:J

    return-wide v0
.end method

.method static synthetic access$1600(Lcom/miui/home/recents/views/RecentsContainer;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mTxtMemoryInfo1:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/miui/home/recents/views/RecentsContainer;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mTxtMemoryInfo2:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/miui/home/recents/views/RecentsContainer;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mSeparatorForMemoryInfo:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/miui/home/recents/views/RecentsContainer;)Lcom/miui/home/recents/views/CircleAndTickAnimView;
    .locals 0

    iget-object p0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mClearAnimView:Lcom/miui/home/recents/views/CircleAndTickAnimView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/home/recents/views/RecentsContainer;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentsContainer;->enterSmallWindowEdit()V

    return-void
.end method

.method static synthetic access$2002(Lcom/miui/home/recents/views/RecentsContainer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/home/recents/views/RecentsContainer;->mIsLauncherStableVisible:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/miui/home/recents/views/RecentsContainer;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mIsLauncherVisible:Z

    return p0
.end method

.method static synthetic access$2200(Lcom/miui/home/recents/views/RecentsContainer;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentsContainer;->updateExitMultiModeBtnVisible()V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/home/recents/views/RecentsContainer;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentsContainer;->exitSmallWindowEdit()V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/home/recents/views/RecentsContainer;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentsContainer;->updateRecentsRecommendViewVisible()V

    return-void
.end method

.method static synthetic access$502(Lcom/miui/home/recents/views/RecentsContainer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/home/recents/views/RecentsContainer;->mIsShowRecommendBySettings:Z

    return p1
.end method

.method static synthetic access$602(Lcom/miui/home/recents/views/RecentsContainer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/home/recents/views/RecentsContainer;->mIsShowMemInfo:Z

    return p1
.end method

.method static synthetic access$702(Lcom/miui/home/recents/views/RecentsContainer;I)I
    .locals 0

    iput p1, p0, Lcom/miui/home/recents/views/RecentsContainer;->mIsOpenExternalRam:I

    return p1
.end method

.method static synthetic access$800(Lcom/miui/home/recents/views/RecentsContainer;)Lcom/miui/home/recents/views/RecentsView;
    .locals 0

    iget-object p0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentsView:Lcom/miui/home/recents/views/RecentsView;

    return-object p0
.end method

.method static synthetic access$900(Lcom/miui/home/recents/views/RecentsContainer;Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Ljava/util/ArrayList;
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/recents/views/RecentsContainer;->getWhiteList(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method private addRecentsRecommendViewIfNeeded()V
    .locals 4

    invoke-static {}, Lcom/miui/home/recents/util/Utilities;->isAddRecentsRecommend()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d015d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/views/RecentsRecommendView;

    iput-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentsRecommendView:Lcom/miui/home/recents/views/RecentsRecommendView;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceWidth()I

    move-result v1

    int-to-float v2, v1

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsContainer;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/home/recents/util/Utilities;->getTaskViewScale(Landroid/content/Context;)F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x3

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070590

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v1, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentsDecorations:Lcom/miui/home/recents/views/RecentsDecorations;

    iget-object v2, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentsRecommendView:Lcom/miui/home/recents/views/RecentsRecommendView;

    invoke-virtual {v1, v2, v0}, Lcom/miui/home/recents/views/RecentsDecorations;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private canPackageNameStartAnyActivity(Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/library/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/LauncherAppsCompat;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/miui/home/library/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private canTxtMemInfoShow()Z
    .locals 1

    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentsContainer;->canTxtMemInfoShowIgnoreSmallWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mIsShowSmallWindowRecyclerView:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private canTxtMemInfoShowIgnoreSmallWindow()Z
    .locals 1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentsContainer;->isMemInfoShow()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private cancelCheckLauncherStableVisible()V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mLauncherStableVisibleChecker:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsContainer;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private changeViewAlphaWhenOpenCloseSmallWindowContainer(Landroid/view/View;Z)V
    .locals 6

    const/4 v0, 0x2

    const/4 v1, -0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    new-array p2, v2, [Landroid/view/View;

    aput-object p1, p2, v3

    invoke-static {p2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IFolme;->visible()Lmiuix/animation/IVisibleStyle;

    move-result-object p1

    const-wide/16 v4, 0x64

    invoke-interface {p1, v4, v5}, Lmiuix/animation/IVisibleStyle;->setShowDelay(J)Lmiuix/animation/IVisibleStyle;

    move-result-object p1

    new-array p2, v2, [Lmiuix/animation/base/AnimConfig;

    new-instance v2, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v2}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-virtual {v2, v1, v0}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v0

    aput-object v0, p2, v3

    invoke-interface {p1, p2}, Lmiuix/animation/IVisibleStyle;->show([Lmiuix/animation/base/AnimConfig;)V

    goto :goto_0

    :cond_0
    new-array p2, v2, [Landroid/view/View;

    aput-object p1, p2, v3

    invoke-static {p2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IFolme;->visible()Lmiuix/animation/IVisibleStyle;

    move-result-object p1

    new-array p2, v2, [Lmiuix/animation/base/AnimConfig;

    new-instance v2, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v2}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    invoke-virtual {v2, v1, v0}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v0

    aput-object v0, p2, v3

    invoke-interface {p1, p2}, Lmiuix/animation/IVisibleStyle;->hide([Lmiuix/animation/base/AnimConfig;)V

    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x3f666666    # 0.9f
        0x3e99999a    # 0.3f
    .end array-data

    :array_1
    .array-data 4
        0x3f666666    # 0.9f
        0x3e4ccccd    # 0.2f
    .end array-data
.end method

.method private checkIfRemoveForegroundTask(Lcom/android/systemui/shared/recents/model/Task;)V
    .locals 2

    invoke-static {}, Lcom/miui/home/recents/ForegroundTaskHelper;->getInstance()Lcom/miui/home/recents/ForegroundTaskHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/ForegroundTaskHelper;->getForegroundSmallWindows()Ljava/util/Set;

    move-result-object v0

    invoke-static {}, Lcom/miui/home/recents/ForegroundTaskHelper;->getInstance()Lcom/miui/home/recents/ForegroundTaskHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/recents/ForegroundTaskHelper;->getFullScreenTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/miui/home/recents/views/RecentsContainer;->isSameTaskId(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/systemui/shared/recents/model/Task;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/miui/home/recents/ForegroundTaskHelper;->getInstance()Lcom/miui/home/recents/ForegroundTaskHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/recents/ForegroundTaskHelper;->clearFullScreenTask()V

    :cond_0
    invoke-virtual {p1, v0}, Lcom/android/systemui/shared/recents/model/Task;->isInSmallWindow(Ljava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/miui/home/recents/ForegroundTaskHelper;->getInstance()Lcom/miui/home/recents/ForegroundTaskHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/home/recents/ForegroundTaskHelper;->removeForegroundSmallWindow(Lcom/android/systemui/shared/recents/model/Task;)V

    :cond_1
    return-void
.end method

.method private cleanInRecents()V
    .locals 4

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsContainer;->getFreeMemory()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mFreeAtFirst:J

    iput-wide v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mFreeBeforeClean:J

    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentsContainer;->deepClean()V

    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/miui/home/recents/messages/DismissAllTaskViewsEvent;

    invoke-direct {v1}, Lcom/miui/home/recents/messages/DismissAllTaskViewsEvent;-><init>()V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private static createSystemInsetsFromWindowInsets(Landroid/view/WindowInsets;)Landroid/graphics/Rect;
    .locals 4

    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result p0

    invoke-direct {v0, v1, v2, v3, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method private deepClean()V
    .locals 3

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentsView:Lcom/miui/home/recents/views/RecentsView;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsView;->getStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentsView:Lcom/miui/home/recents/views/RecentsView;

    invoke-virtual {v1}, Lcom/miui/home/recents/views/RecentsView;->getStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_0
    invoke-static {}, Lcom/miui/home/launcher/common/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/miui/home/recents/views/RecentsContainer$10;

    invoke-direct {v2, p0, v0}, Lcom/miui/home/recents/views/RecentsContainer$10;-><init>(Lcom/miui/home/recents/views/RecentsContainer;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private doClearAnim()V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsContainer;->refreshMemoryInfo()V

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mClearAnimView:Lcom/miui/home/recents/views/CircleAndTickAnimView;

    new-instance v1, Lcom/miui/home/recents/views/RecentsContainer$11;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/views/RecentsContainer$11;-><init>(Lcom/miui/home/recents/views/RecentsContainer;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/views/CircleAndTickAnimView;->animatorStart(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private endForClear()V
    .locals 3

    new-instance v0, Lcom/miui/home/recents/views/RecentsContainer$12;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/views/RecentsContainer$12;-><init>(Lcom/miui/home/recents/views/RecentsContainer;)V

    const-wide/16 v1, 0x12c

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/common/BackgroundThread;->postDelayed(Ljava/lang/Runnable;J)V

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentsRecommendView:Lcom/miui/home/recents/views/RecentsRecommendView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mIsRecentsRecommendViewVisible:Z

    invoke-static {v0}, Lcom/miui/home/launcher/AnalyticalDataCollectorForRecents;->sendShowRecommendCardEvent(Z)V

    :cond_0
    return-void
.end method

.method private enterSmallWindowEdit()V
    .locals 5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mIsShowSmallWindowRecyclerView:Z

    iget-object v1, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentsView:Lcom/miui/home/recents/views/RecentsView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/miui/home/recents/views/RecentsView;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/home/recents/views/RecentsContainer;->mSmallWindowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/home/recents/views/RecentsContainer;->mMemoryAndClearContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/home/recents/views/RecentsContainer;->mSmallWindowEdit:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentsView:Lcom/miui/home/recents/views/RecentsView;

    invoke-virtual {v1}, Lcom/miui/home/recents/views/RecentsView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    sget v3, Lcom/miui/home/recents/views/RecentsContainer;->ANIMATE_DURATION:I

    int-to-long v3, v3

    invoke-virtual {v1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v1, p0, Lcom/miui/home/recents/views/RecentsContainer;->mSmallWindowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    sget v3, Lcom/miui/home/recents/views/RecentsContainer;->ANIMATE_DURATION:I

    int-to-long v3, v3

    invoke-virtual {v1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v1, p0, Lcom/miui/home/recents/views/RecentsContainer;->mMemoryAndClearContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    sget v2, Lcom/miui/home/recents/views/RecentsContainer;->ANIMATE_DURATION:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v1, p0, Lcom/miui/home/recents/views/RecentsContainer;->mSmallWindowEdit:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    sget v2, Lcom/miui/home/recents/views/RecentsContainer;->ANIMATE_DURATION:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/miui/home/launcher/util/UiThreadHelper;->setOrientationAsync(Landroid/app/Activity;I)V

    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isKeepRecentsViewPortrait()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Lcom/miui/home/recents/views/RecentsContainer;->updateRotation(I)V

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsContainer;->invalidate()V

    :cond_1
    return-void
.end method

.method private exitSmallWindowEdit()V
    .locals 6

    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentsContainer;->isSmallWindowEditShow()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mSmallWindowEdit:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mIsShowSmallWindowRecyclerView:Z

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mSmallWindowContainer:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mSmallWindowEdit:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget v3, Lcom/miui/home/recents/views/RecentsContainer;->ANIMATE_DURATION:I

    int-to-long v3, v3

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentsContainer;->isTaskStackViewLayoutVertical()Z

    move-result v0

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentsView:Lcom/miui/home/recents/views/RecentsView;

    invoke-virtual {v0, v2}, Lcom/miui/home/recents/views/RecentsView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentsView:Lcom/miui/home/recents/views/RecentsView;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget v4, Lcom/miui/home/recents/views/RecentsContainer;->ANIMATE_DURATION:I

    int-to-long v4, v4

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsContainer;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsView;->getTaskViewCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mMemoryAndClearContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mMemoryAndClearContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mMemoryAndClearContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget v1, Lcom/miui/home/recents/views/RecentsContainer;->ANIMATE_DURATION:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_1
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mSmallWindowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget v1, Lcom/miui/home/recents/views/RecentsContainer;->ANIMATE_DURATION:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentsContainer;->updateSmallWindowList()V

    :cond_2
    return-void
.end method

.method public static getBdSize()F
    .locals 4

    :try_start_0
    const-string v0, "persist.miui.extm.bdsize"

    invoke-static {v0}, Lcom/miui/launcher/utils/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    const-string v1, "RecentsContainer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBdSize: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/high16 v3, 0x44800000    # 1024.0f

    div-float/2addr v0, v3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, "GB"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private getExitMultiModeBtnParams()Landroid/view/WindowManager$LayoutParams;
    .locals 7

    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x2

    const/16 v3, 0x7eb

    const/16 v4, 0x28

    const/4 v5, -0x3

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const/16 v0, 0x31

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const-string v0, "ExitMultiModeBtn"

    invoke-virtual {v6, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    return-object v6
.end method

.method private getRecentsContainerVisualRotationAllInsets(Landroid/graphics/Rect;I)Landroid/graphics/Rect;
    .locals 1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isKeepRecentsViewPortrait()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lcom/miui/home/recents/views/RecentsContainer;->rotateRectFromRotation0(Landroid/graphics/Rect;I)Landroid/graphics/Rect;

    move-result-object p1

    return-object p1

    :cond_0
    return-object p1
.end method

.method private getSuggestionIndex(Ljava/lang/String;)I
    .locals 4

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mSuggestionList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v1

    :cond_1
    iget-object v3, p0, Lcom/miui/home/recents/views/RecentsContainer;->mSelectedList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public static getToastMsg(Landroid/content/Context;JJ)Ljava/lang/String;
    .locals 4

    sub-long/2addr p3, p1

    const-wide/16 p1, 0x0

    invoke-static {p3, p4, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    const-wide/16 p3, 0x2800

    cmp-long p3, p1, p3

    if-lez p3, :cond_1

    const-wide/16 p3, 0x400

    div-long/2addr p1, p3

    cmp-long p3, p1, p3

    const/4 p4, 0x0

    const/4 v0, 0x1

    if-gez p3, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p3, 0x7f1102a9

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string v3, "%d"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v0, p4

    invoke-static {v2, v3, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, p4

    invoke-virtual {p0, p3, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p3, 0x7f1102a8

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string v3, "%.1f"

    new-array v0, v0, [Ljava/lang/Object;

    long-to-float p1, p1

    const/high16 p2, 0x44800000    # 1024.0f

    div-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v0, p4

    invoke-static {v2, v3, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, p4

    invoke-virtual {p0, p3, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f1102a6

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private getWhiteList(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/shared/recents/model/Task$TaskKey;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->topActivity:Landroid/content/ComponentName;

    if-eqz v2, :cond_0

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0
.end method

.method private handleTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    iget-boolean v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mIsShowSmallWindowRecyclerView:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentsContainer;->isTaskStackViewLayoutVertical()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    new-array v0, v0, [F

    iget-object v2, p0, Lcom/miui/home/recents/views/RecentsContainer;->mSmallWindowContainer:Landroid/widget/LinearLayout;

    const/4 v3, 0x1

    invoke-static {v2, p0, v0, v3, v1}, Lcom/miui/home/launcher/common/Utilities;->getDescendantCoordRelativeToAncestor(Landroid/view/View;Landroid/view/View;[FZZ)F

    new-instance v2, Landroid/graphics/RectF;

    aget v4, v0, v1

    aget v5, v0, v3

    aget v6, v0, v1

    iget-object v7, p0, Lcom/miui/home/recents/views/RecentsContainer;->mSmallWindowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    aget v0, v0, v3

    iget-object v7, p0, Lcom/miui/home/recents/views/RecentsContainer;->mSmallWindowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v0, v7

    invoke-direct {v2, v4, v5, v6, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v2, v0, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-ne p1, v3, :cond_0

    invoke-direct {p0, v1}, Lcom/miui/home/recents/views/RecentsContainer;->updateSmallWindowMode(Z)V

    :cond_0
    return v3

    :cond_1
    return v1
.end method

.method private isClearContainerVisible()Z
    .locals 1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsContainer;->getStackTaskCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isMemInfoShow()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mIsShowMemInfo:Z

    return v0
.end method

.method private isSameTaskId(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/systemui/shared/recents/model/Task;)Z
    .locals 0

    if-eqz p1, :cond_0

    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget-object p2, p2, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget p2, p2, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isSmallWindowEditShow()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mSmallWindowEdit:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isTaskStackViewLayoutVertical()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentsView:Lcom/miui/home/recents/views/RecentsView;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackView;->isTaskStackViewLayoutStyleVertical()Z

    move-result v0

    return v0
.end method

.method private isUseFixedRotationTransform()Z
    .locals 1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isKeepRecentsViewPortrait()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic lambda$kyf4R3wDaNTRVVWLpLUEPkPsWKo(Lcom/miui/home/recents/views/RecentsContainer;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/recents/views/RecentsContainer;->canPackageNameStartAnyActivity(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$notifyRecentTaskState$1(ZLandroid/content/Context;)V
    .locals 3

    const-string v0, "RecentsContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyRecentTaskState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.miui.powerkeeper"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.miui.powerkeeper.RECENT_TASK"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "isEnter"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic lambda$onSmallestScreenWidthChanged$0(Lcom/miui/home/recents/views/RecentsContainer;)Lkotlin/Unit;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsContainer;->dismissRecentsToHome()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public static synthetic lambda$updateSuggestionList$2(Lcom/miui/home/recents/views/RecentsContainer;Ljava/lang/Void;)Ljava/util/List;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsContainer;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->getSuggestionList(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/miui/home/recents/views/-$$Lambda$RecentsContainer$kyf4R3wDaNTRVVWLpLUEPkPsWKo;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/views/-$$Lambda$RecentsContainer$kyf4R3wDaNTRVVWLpLUEPkPsWKo;-><init>(Lcom/miui/home/recents/views/RecentsContainer;)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    :cond_0
    return-object p1
.end method

.method public static synthetic lambda$updateSuggestionList$3(Lcom/miui/home/recents/views/RecentsContainer;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/recents/views/RecentsContainer;->mSuggestionList:Ljava/util/List;

    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentsContainer;->updateSmallWindowList()V

    return-void
.end method

.method private modifyRecentsDecorationsMargin(Landroid/graphics/Rect;)V
    .locals 4

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentsDecorations:Lcom/miui/home/recents/views/RecentsDecorations;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsDecorations;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const-string v1, "RecentsContainer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "modifyRecentsDecorationsMargin, margin changed, margin="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentsDecorations:Lcom/miui/home/recents/views/RecentsDecorations;

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/views/RecentsDecorations;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private notifyRecentTaskState(Landroid/content/Context;Z)V
    .locals 2

    invoke-static {}, Lcom/miui/home/launcher/common/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/miui/home/recents/views/-$$Lambda$RecentsContainer$JiPqxddf4VeYBuSVZVJQtauDAqU;

    invoke-direct {v1, p2, p1}, Lcom/miui/home/recents/views/-$$Lambda$RecentsContainer$JiPqxddf4VeYBuSVZVJQtauDAqU;-><init>(ZLandroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private recalculateAllInsetsIfNeed(Landroid/graphics/Rect;I)Landroid/graphics/Rect;
    .locals 1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isKeepRecentsViewPortrait()Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->IS_FOLD_DEVICE:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/views/RecentsContainer;->recalculateAllInsetsWhenLauncherCanRotate(Landroid/graphics/Rect;I)Landroid/graphics/Rect;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    return-object p1
.end method

.method private recalculateAllInsetsWhenLauncherCanRotate(Landroid/graphics/Rect;I)Landroid/graphics/Rect;
    .locals 3

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->getNotchHeight(Landroid/content/Context;)I

    move-result v0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isShowNavigationBar()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isShowGestureLine()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/launcher/common/Utilities;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x1

    if-eq p2, v2, :cond_2

    const/4 v2, 0x3

    if-eq p2, v2, :cond_1

    return-object p1

    :cond_1
    new-instance p2, Landroid/graphics/Rect;

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p2, v1, v2, v0, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p2

    :cond_2
    new-instance p2, Landroid/graphics/Rect;

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p2, v0, v2, v1, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p2
.end method

.method private recalculateSystemInsetsTop(II)I
    .locals 2

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isKeepRecentsViewPortrait()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->doLauncherHavePaddingTopForStatusBarAndNotch()Z

    move-result p2

    if-nez p2, :cond_4

    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isHideStatusBarWhenEnterRecents()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    move p1, v1

    goto :goto_0

    :cond_1
    invoke-static {p2}, Lcom/miui/home/recents/util/RotationHelper;->isLandscapeRotation(I)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isHideStatusBarWhenEnterRecents()Z

    move-result p2

    if-eqz p2, :cond_4

    move p1, v1

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->doLauncherHavePaddingTopForStatusBarAndNotch()Z

    move-result p2

    if-nez p2, :cond_4

    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isHideStatusBarWhenEnterRecents()Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    move p1, v1

    :cond_4
    :goto_0
    return p1
.end method

.method private registerContentObservers()V
    .locals 4

    invoke-static {}, Lcom/miui/home/recents/util/Utilities;->isAddRecentsRecommend()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "miui_recents_show_recommend"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/home/recents/views/RecentsContainer;->mShowRecommendObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "content://com.android.settings.cloud.CloudSettings/cloud_all_data/notify"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/home/recents/views/RecentsContainer;->mShowRecommendObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mShowRecommendObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/database/ContentObserver;->onChange(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "miui_recents_show_mem_info"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/home/recents/views/RecentsContainer;->mShowMemInfoObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "isExternalRamOn"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/home/recents/views/RecentsContainer;->mOpenExternalRamObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mShowMemInfoObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/database/ContentObserver;->onChange(Z)V

    return-void
.end method

.method private removeExitMultiModeBtnIfNeeded()V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mExitMultiModeBtn:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mIsAddExitMultiModeBtn:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/miui/home/recents/views/RecentsContainer;->mExitMultiModeBtn:Landroid/widget/Button;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mIsAddExitMultiModeBtn:Z

    :cond_0
    return-void
.end method

.method private resetToNormalState()V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentMenuView:Lcom/miui/home/recents/views/RecentMenuView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/views/RecentMenuView;->removeMenu(Z)Z

    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentsContainer;->exitSmallWindowEdit()V

    return-void
.end method

.method private resumeSmallWindowEdit()V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mSmallWindowEdit:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentsView:Lcom/miui/home/recents/views/RecentsView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/views/RecentsView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mSmallWindowEdit:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mSmallWindowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentsView:Lcom/miui/home/recents/views/RecentsView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/views/RecentsView;->setAlpha(F)V

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mMemoryAndClearContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mSmallWindowEdit:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mSmallWindowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method private rotateRecentsContainer(III)V
    .locals 3

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsContainer;->setPivotX(F)V

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsContainer;->setPivotY(F)V

    packed-switch p3, :pswitch_data_0

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsContainer;->setRotation(F)V

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsContainer;->setTranslationX(F)V

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsContainer;->setTranslationY(F)V

    goto :goto_0

    :pswitch_0
    const/high16 v1, 0x43870000    # 270.0f

    invoke-virtual {p0, v1}, Lcom/miui/home/recents/views/RecentsContainer;->setRotation(F)V

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsContainer;->setTranslationX(F)V

    int-to-float v0, p1

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsContainer;->setTranslationY(F)V

    goto :goto_0

    :pswitch_1
    const/high16 v0, 0x43340000    # 180.0f

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsContainer;->setRotation(F)V

    int-to-float v0, p1

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsContainer;->setTranslationX(F)V

    int-to-float v0, p2

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsContainer;->setTranslationY(F)V

    goto :goto_0

    :pswitch_2
    const/high16 v1, 0x42b40000    # 90.0f

    invoke-virtual {p0, v1}, Lcom/miui/home/recents/views/RecentsContainer;->setRotation(F)V

    int-to-float v1, p2

    invoke-virtual {p0, v1}, Lcom/miui/home/recents/views/RecentsContainer;->setTranslationX(F)V

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsContainer;->setTranslationY(F)V

    :goto_0
    const-string v0, "RecentsContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rotateRecentsContainer, recentsRotation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", widthAndHeight=["

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private rotateRecentsContainerWhenRtl(III)V
    .locals 3

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    int-to-float v0, p1

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsContainer;->setPivotX(F)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/miui/home/recents/views/RecentsContainer;->setPivotY(F)V

    packed-switch p3, :pswitch_data_0

    invoke-virtual {p0, v1}, Lcom/miui/home/recents/views/RecentsContainer;->setRotation(F)V

    invoke-virtual {p0, v1}, Lcom/miui/home/recents/views/RecentsContainer;->setTranslationX(F)V

    invoke-virtual {p0, v1}, Lcom/miui/home/recents/views/RecentsContainer;->setTranslationY(F)V

    goto :goto_0

    :pswitch_0
    const/high16 v0, 0x43870000    # 270.0f

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsContainer;->setRotation(F)V

    neg-int v0, p2

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsContainer;->setTranslationX(F)V

    invoke-virtual {p0, v1}, Lcom/miui/home/recents/views/RecentsContainer;->setTranslationY(F)V

    goto :goto_0

    :pswitch_1
    const/high16 v0, 0x43340000    # 180.0f

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsContainer;->setRotation(F)V

    neg-int v0, p1

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsContainer;->setTranslationX(F)V

    int-to-float v0, p2

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsContainer;->setTranslationY(F)V

    goto :goto_0

    :pswitch_2
    const/high16 v2, 0x42b40000    # 90.0f

    invoke-virtual {p0, v2}, Lcom/miui/home/recents/views/RecentsContainer;->setRotation(F)V

    invoke-virtual {p0, v1}, Lcom/miui/home/recents/views/RecentsContainer;->setTranslationX(F)V

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsContainer;->setTranslationY(F)V

    :goto_0
    const-string v0, "RecentsContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rotateRecentsContainerWhenRtl, recentsRotation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", widthAndHeight=["

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static rotateRectFromRotation0(Landroid/graphics/Rect;I)Landroid/graphics/Rect;
    .locals 3

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    packed-switch p1, :pswitch_data_0

    invoke-virtual {v0, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    :pswitch_0
    iget p1, p0, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Landroid/graphics/Rect;->top:I

    iget p0, p0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0, p1, v1, v2, p0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :pswitch_1
    iget p1, p0, Landroid/graphics/Rect;->right:I

    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Landroid/graphics/Rect;->left:I

    iget p0, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, p1, v1, v2, p0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :pswitch_2
    iget p1, p0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Landroid/graphics/Rect;->right:I

    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    iget p0, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0, p1, v1, v2, p0}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private saveSelectedList()V
    .locals 3

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "preferences_selected_list"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Lcom/mi/google/gson/Gson;

    invoke-direct {v1}, Lcom/mi/google/gson/Gson;-><init>()V

    iget-object v2, p0, Lcom/miui/home/recents/views/RecentsContainer;->mSelectedList:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/mi/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "selected_list_key"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private setCurrentOrientation(I)V
    .locals 2

    iput p1, p0, Lcom/miui/home/recents/views/RecentsContainer;->mCurrentOrientation:I

    const-string p1, "RecentsContainer"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCurrentOrientation, mCurrentOrientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/recents/views/RecentsContainer;->mCurrentOrientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setRecentsViewAndDecorationsInsets(Landroid/graphics/Rect;I)V
    .locals 2

    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-direct {p0, v0, p2}, Lcom/miui/home/recents/views/RecentsContainer;->recalculateSystemInsetsTop(II)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/views/RecentsContainer;->getRecentsContainerVisualRotationAllInsets(Landroid/graphics/Rect;I)Landroid/graphics/Rect;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/home/recents/views/RecentsContainer;->mVisualRotationAllInsets:Landroid/graphics/Rect;

    invoke-virtual {p2, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "RecentsContainer"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "visualRotationInsets changed, from="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/recents/views/RecentsContainer;->mVisualRotationAllInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", to="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/miui/home/recents/views/RecentsContainer;->mVisualRotationAllInsets:Landroid/graphics/Rect;

    invoke-virtual {p2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentsView:Lcom/miui/home/recents/views/RecentsView;

    iget-object p2, p0, Lcom/miui/home/recents/views/RecentsContainer;->mVisualRotationAllInsets:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Lcom/miui/home/recents/views/RecentsView;->setVisulaRotationSystemInsets(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsContainer;->mVisualRotationAllInsets:Landroid/graphics/Rect;

    invoke-direct {p0, p1}, Lcom/miui/home/recents/views/RecentsContainer;->modifyRecentsDecorationsMargin(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method private setupVisible()V
    .locals 4

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInMultiWindowMode()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iget-boolean v1, p0, Lcom/miui/home/recents/views/RecentsContainer;->mIsSupportSmallWindow:Z

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->usingFsGesture()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/home/recents/views/RecentsContainer;->mSuggestionList:Ljava/util/List;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentsContainer;->updateSuggestionList()V

    :cond_1
    invoke-direct {p0, v3}, Lcom/miui/home/recents/views/RecentsContainer;->updateSmallWindowMode(Z)V

    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentsContainer;->resumeSmallWindowEdit()V

    iget-object v1, p0, Lcom/miui/home/recents/views/RecentsContainer;->mTxtSmallWindowContainer:Lcom/miui/home/recents/views/AdaptiveLinearLayout;

    invoke-virtual {v1, v2}, Lcom/miui/home/recents/views/AdaptiveLinearLayout;->setAlpha(F)V

    iget-object v1, p0, Lcom/miui/home/recents/views/RecentsContainer;->mTxtSmallWindowContainer:Lcom/miui/home/recents/views/AdaptiveLinearLayout;

    if-eqz v0, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    const/4 v0, 0x4

    :goto_0
    invoke-virtual {v1, v0}, Lcom/miui/home/recents/views/AdaptiveLinearLayout;->setVisibility(I)V

    :cond_3
    sget-boolean v0, Lcom/miui/home/launcher/ApplicationConfig;->sIsSupportRelayInRecents:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentsDecorations:Lcom/miui/home/recents/views/RecentsDecorations;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsDecorations;->getRecentsRelayContainer()Lcom/miui/home/recents/relay/RelayIconInRecents;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/relay/RelayIconInRecents;->setupVisible()V

    :cond_4
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsContainer;->updateClearContainerVisible()V

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mTxtMemoryContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setAlpha(F)V

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mTxtMemoryContainer:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentsContainer;->canTxtMemInfoShow()Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_1

    :cond_5
    const/16 v3, 0x8

    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentsContainer;->updateRecentsRecommendViewVisible()V

    return-void
.end method

.method private showOrHideSmallWindowContainer(Z)V
    .locals 7

    iget-boolean v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mIsSupportSmallWindow:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    iget-object v1, p0, Lcom/miui/home/recents/views/RecentsContainer;->mSmallWindowListRecyclerView:Lcom/miui/home/smallwindow/SmallWindowListRecyclerView;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Lcom/miui/home/smallwindow/SmallWindowListRecyclerView;->scrollToPosition(I)V

    :cond_1
    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentsContainer;->isTaskStackViewLayoutVertical()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mSmallWindowContainer:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, p1}, Lcom/miui/home/recents/views/RecentsContainer;->changeViewAlphaWhenOpenCloseSmallWindowContainer(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentsView:Lcom/miui/home/recents/views/RecentsView;

    xor-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/miui/home/recents/views/RecentsContainer;->changeViewAlphaWhenOpenCloseSmallWindowContainer(Landroid/view/View;Z)V

    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentsContainer;->isClearContainerVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mMemoryAndClearContainer:Landroid/view/ViewGroup;

    xor-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/miui/home/recents/views/RecentsContainer;->changeViewAlphaWhenOpenCloseSmallWindowContainer(Landroid/view/View;Z)V

    :cond_2
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mTxtSmallWindowContainer:Lcom/miui/home/recents/views/AdaptiveLinearLayout;

    xor-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/miui/home/recents/views/RecentsContainer;->changeViewAlphaWhenOpenCloseSmallWindowContainer(Landroid/view/View;Z)V

    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentsContainer;->canTxtMemInfoShowIgnoreSmallWindow()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mTxtMemoryContainer:Landroid/view/ViewGroup;

    xor-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/miui/home/recents/views/RecentsContainer;->changeViewAlphaWhenOpenCloseSmallWindowContainer(Landroid/view/View;Z)V

    :cond_3
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentsRecommendView:Lcom/miui/home/recents/views/RecentsRecommendView;

    if-eqz v0, :cond_b

    xor-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/miui/home/recents/views/RecentsContainer;->changeViewAlphaWhenOpenCloseSmallWindowContainer(Landroid/view/View;Z)V

    goto/16 :goto_3

    :cond_4
    const/16 v1, 0x8

    if-eqz p1, :cond_5

    move v2, v1

    goto :goto_0

    :cond_5
    move v2, v0

    :goto_0
    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz p1, :cond_6

    move v5, v3

    goto :goto_1

    :cond_6
    move v5, v4

    :goto_1
    if-eqz p1, :cond_7

    move v1, v0

    :cond_7
    if-eqz p1, :cond_8

    move v3, v4

    :cond_8
    iget-object v4, p0, Lcom/miui/home/recents/views/RecentsContainer;->mSmallWindowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/home/recents/views/RecentsContainer;->mSmallWindowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v1, p0, Lcom/miui/home/recents/views/RecentsContainer;->mTxtSmallWindowContainer:Lcom/miui/home/recents/views/AdaptiveLinearLayout;

    invoke-virtual {v1, v2}, Lcom/miui/home/recents/views/AdaptiveLinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/home/recents/views/RecentsContainer;->mTxtSmallWindowContainer:Lcom/miui/home/recents/views/AdaptiveLinearLayout;

    invoke-virtual {v1}, Lcom/miui/home/recents/views/AdaptiveLinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentsContainer;->canTxtMemInfoShow()Z

    move-result v1

    if-eqz v1, :cond_9

    move v1, v2

    goto :goto_2

    :cond_9
    const/4 v1, 0x4

    :goto_2
    iget-object v6, p0, Lcom/miui/home/recents/views/RecentsContainer;->mTxtMemoryContainer:Landroid/view/ViewGroup;

    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/home/recents/views/RecentsContainer;->mTxtMemoryContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v1, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentsRecommendView:Lcom/miui/home/recents/views/RecentsRecommendView;

    if-eqz v1, :cond_a

    invoke-virtual {v1, v2}, Lcom/miui/home/recents/views/RecentsRecommendView;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentsRecommendView:Lcom/miui/home/recents/views/RecentsRecommendView;

    invoke-virtual {v1}, Lcom/miui/home/recents/views/RecentsRecommendView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_a
    iget-object v1, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentsView:Lcom/miui/home/recents/views/RecentsView;

    invoke-virtual {v1}, Lcom/miui/home/recents/views/RecentsView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentsView:Lcom/miui/home/recents/views/RecentsView;

    invoke-virtual {v1, v0}, Lcom/miui/home/recents/views/RecentsView;->setVisibility(I)V

    :cond_b
    :goto_3
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentsRecommendView:Lcom/miui/home/recents/views/RecentsRecommendView;

    if-eqz v0, :cond_c

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/views/RecentsRecommendView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentsRecommendView:Lcom/miui/home/recents/views/RecentsRecommendView;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Lcom/miui/home/recents/views/RecentsRecommendView;->setAllItemClickable(Z)V

    :cond_c
    return-void
.end method

.method private startCheckLauncherStableVisible()V
    .locals 3

    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentsContainer;->cancelCheckLauncherStableVisible()V

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mLauncherStableVisibleChecker:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/home/recents/views/RecentsContainer;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private translationDecorationViewByScroll(Landroid/view/View;IZ)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mTmp:[F

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, p0, v0, v2, v1}, Lcom/miui/home/launcher/common/Utilities;->getDescendantCoordRelativeToAncestor(Landroid/view/View;Landroid/view/View;[FZZ)F

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mTmp:[F

    aget v0, v0, v1

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentsRecommendView:Lcom/miui/home/recents/views/RecentsRecommendView;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/miui/home/recents/views/RecentsRecommendView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsContainer;->getStackTaskCount()I

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentsView:Lcom/miui/home/recents/views/RecentsView;

    invoke-virtual {v1}, Lcom/miui/home/recents/views/RecentsView;->getFirstTaskViewYWhenNoScroll()I

    move-result v1

    sub-int v0, v1, v0

    :goto_0
    add-int/2addr v0, p2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    if-eqz p3, :cond_3

    const/high16 p3, 0x42c80000    # 100.0f

    div-float/2addr p2, p3

    const/high16 p3, 0x3f800000    # 1.0f

    add-float/2addr p2, p3

    const/4 v0, 0x0

    invoke-static {p2, v0, p3}, Lcom/miui/home/recents/util/Utilities;->clamp(FFF)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    :cond_3
    return-void
.end method

.method private unRegisterContentObservers()V
    .locals 2

    invoke-static {}, Lcom/miui/home/recents/util/Utilities;->isAddRecentsRecommend()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/views/RecentsContainer;->mShowRecommendObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/views/RecentsContainer;->mShowMemInfoObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/views/RecentsContainer;->mOpenExternalRamObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method private updateAllInsets(Landroid/graphics/Rect;I)V
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/views/RecentsContainer;->recalculateAllInsetsIfNeed(Landroid/graphics/Rect;I)Landroid/graphics/Rect;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mAllInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "RecentsContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateAllInsets, from="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/home/recents/views/RecentsContainer;->mAllInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", to="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", rotation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mAllInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/views/RecentsContainer;->setRecentsViewAndDecorationsInsets(Landroid/graphics/Rect;I)V

    :cond_0
    return-void
.end method

.method private updateDecorationsTranslationY(I)V
    .locals 3

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentsRecommendView:Lcom/miui/home/recents/views/RecentsRecommendView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Lcom/miui/home/recents/views/RecentsRecommendView;->setTranslationY(F)V

    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mTxtMemoryContainer:Landroid/view/ViewGroup;

    const/4 v2, 0x1

    invoke-direct {p0, v0, p1, v2}, Lcom/miui/home/recents/views/RecentsContainer;->translationDecorationViewByScroll(Landroid/view/View;IZ)V

    iget-boolean v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mIsSupportSmallWindow:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mSmallWindowContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    :cond_1
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mTxtSmallWindowContainer:Lcom/miui/home/recents/views/AdaptiveLinearLayout;

    invoke-direct {p0, v0, p1, v2}, Lcom/miui/home/recents/views/RecentsContainer;->translationDecorationViewByScroll(Landroid/view/View;IZ)V

    :cond_2
    sget-boolean v0, Lcom/miui/home/launcher/ApplicationConfig;->sIsSupportRelayInRecents:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentsDecorations:Lcom/miui/home/recents/views/RecentsDecorations;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsDecorations;->getRecentsRelayContainer()Lcom/miui/home/recents/relay/RelayIconInRecents;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentsDecorations:Lcom/miui/home/recents/views/RecentsDecorations;

    invoke-virtual {v1}, Lcom/miui/home/recents/views/RecentsDecorations;->getRecentsRelayContainer()Lcom/miui/home/recents/relay/RelayIconInRecents;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/recents/relay/RelayIconInRecents;->isShowRelayIcon()Z

    move-result v1

    invoke-direct {p0, v0, p1, v1}, Lcom/miui/home/recents/views/RecentsContainer;->translationDecorationViewByScroll(Landroid/view/View;IZ)V

    :cond_3
    return-void
.end method

.method private updateExitMultiModeBtnVisible()V
    .locals 5

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->supportsMultiWindow()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mIsInMultiWindowMode:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mIsLauncherStableVisible:Z

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mExitMultiModeBtn:Landroid/widget/Button;

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f0d0069

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mExitMultiModeBtn:Landroid/widget/Button;

    invoke-static {}, Lcom/miui/home/launcher/folme/FolmeUtils;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_2

    new-array v0, v1, [Landroid/view/View;

    iget-object v3, p0, Lcom/miui/home/recents/views/RecentsContainer;->mExitMultiModeBtn:Landroid/widget/Button;

    aput-object v3, v0, v2

    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object v0

    iget-object v3, p0, Lcom/miui/home/recents/views/RecentsContainer;->mExitMultiModeBtn:Landroid/widget/Button;

    new-array v4, v2, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {v0, v3, v4}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    :cond_2
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mExitMultiModeBtn:Landroid/widget/Button;

    new-instance v3, Lcom/miui/home/recents/views/RecentsContainer$17;

    invoke-direct {v3, p0}, Lcom/miui/home/recents/views/RecentsContainer$17;-><init>(Lcom/miui/home/recents/views/RecentsContainer;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "window"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/miui/home/recents/views/RecentsContainer;->mExitMultiModeBtn:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentsContainer;->getExitMultiModeBtnParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-boolean v1, p0, Lcom/miui/home/recents/views/RecentsContainer;->mIsAddExitMultiModeBtn:Z

    :cond_3
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mExitMultiModeBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mExitMultiModeBtn:Landroid/widget/Button;

    if-eqz v0, :cond_5

    iget-boolean v1, p0, Lcom/miui/home/recents/views/RecentsContainer;->mIsAddExitMultiModeBtn:Z

    if-eqz v1, :cond_5

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_5
    :goto_1
    return-void
.end method

.method private updateRecentsContainerRotation(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mAllInsets:Landroid/graphics/Rect;

    invoke-direct {p0, v0, p1}, Lcom/miui/home/recents/views/RecentsContainer;->setRecentsViewAndDecorationsInsets(Landroid/graphics/Rect;I)V

    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentsContainer;->updateRecentsRecommendViewVisible()V

    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentsContainer;->updateSmallWindowListRecyclerViewMargin()V

    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentsContainer;->updateTaskStackViewTranslation()V

    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentsContainer;->updateSmallWindowContainerMaxWidth()V

    return-void
.end method

.method private updateRecentsRecommendViewVisible()V
    .locals 3

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentsRecommendView:Lcom/miui/home/recents/views/RecentsRecommendView;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mIsShowRecommendBySettings:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsContainer;->isLandscapeVisually()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mIsRecentsRecommendViewVisible:Z

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentsRecommendView:Lcom/miui/home/recents/views/RecentsRecommendView;

    iget-boolean v2, p0, Lcom/miui/home/recents/views/RecentsContainer;->mIsRecentsRecommendViewVisible:Z

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v0, v1}, Lcom/miui/home/recents/views/RecentsRecommendView;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method private updateRotation(I)V
    .locals 2

    iput p1, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentsContainerRotation:I

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isKeepRecentsViewPortrait()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->usingFsGesture()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsContainer;->isInLandscapeOverview()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsContainer;->exitLandscapeOverview()V

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->notifyBackGestureStatus()V

    :cond_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    iput-boolean v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mIsInLandscapeOverview:Z

    :cond_3
    return-void
.end method

.method private updateSelectedEmptyView()V
    .locals 5

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mSelectedList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mSelectedView:Lcom/miui/home/smallwindow/SmallWindowSelectedView;

    invoke-virtual {v0}, Lcom/miui/home/smallwindow/SmallWindowSelectedView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/miui/home/smallwindow/SmallWindowSelectedAdapter;

    invoke-virtual {v0}, Lcom/miui/home/smallwindow/SmallWindowSelectedAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mEmptyTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mSelectedView:Lcom/miui/home/smallwindow/SmallWindowSelectedView;

    invoke-virtual {v0, v4}, Lcom/miui/home/smallwindow/SmallWindowSelectedView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mEmptyTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget v1, Lcom/miui/home/recents/views/RecentsContainer;->ANIMATE_DURATION:I

    int-to-long v3, v1

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mSelectedView:Lcom/miui/home/smallwindow/SmallWindowSelectedView;

    invoke-virtual {v0}, Lcom/miui/home/smallwindow/SmallWindowSelectedView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget v1, Lcom/miui/home/recents/views/RecentsContainer;->ANIMATE_DURATION:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mEmptyTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mSelectedView:Lcom/miui/home/smallwindow/SmallWindowSelectedView;

    invoke-virtual {v0, v3}, Lcom/miui/home/smallwindow/SmallWindowSelectedView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mEmptyTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget v2, Lcom/miui/home/recents/views/RecentsContainer;->ANIMATE_DURATION:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mSelectedView:Lcom/miui/home/smallwindow/SmallWindowSelectedView;

    invoke-virtual {v0}, Lcom/miui/home/smallwindow/SmallWindowSelectedView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget v1, Lcom/miui/home/recents/views/RecentsContainer;->ANIMATE_DURATION:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_0
    return-void
.end method

.method private updateSelectedList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mSelectedList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "preferences_selected_list"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "selected_list_key"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/mi/google/gson/Gson;

    invoke-direct {v1}, Lcom/mi/google/gson/Gson;-><init>()V

    new-instance v2, Lcom/miui/home/recents/views/RecentsContainer$19;

    invoke-direct {v2, p0}, Lcom/miui/home/recents/views/RecentsContainer$19;-><init>(Lcom/miui/home/recents/views/RecentsContainer;)V

    invoke-virtual {v2}, Lcom/miui/home/recents/views/RecentsContainer$19;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/mi/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/miui/home/recents/views/RecentsContainer;->mSelectedList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method private updateSmallWindowContainerMaxWidth()V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsContainer;->isLandscapeVisually()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isKeepRecentsViewPortrait()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceWidth()I

    move-result v0

    :goto_0
    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/miui/home/recents/views/RecentsContainer;->mTxtSmallWindowContainer:Lcom/miui/home/recents/views/AdaptiveLinearLayout;

    invoke-virtual {v1, v0}, Lcom/miui/home/recents/views/AdaptiveLinearLayout;->setMaxWidth(I)V

    return-void
.end method

.method private updateSmallWindowList()V
    .locals 5

    iget-boolean v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mIsSupportSmallWindow:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mSuggestionList:Ljava/util/List;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v1}, Lcom/miui/home/recents/views/RecentsContainer;->updateSelectedList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mSelectedList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mPackageNamesList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mPackageNamesList:Ljava/util/List;

    iget-object v2, p0, Lcom/miui/home/recents/views/RecentsContainer;->mSelectedList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mPackageNamesList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v2, v0

    :goto_0
    const/16 v3, 0xa

    if-ge v2, v3, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    sub-int v4, v2, v0

    if-le v3, v4, :cond_1

    iget-object v3, p0, Lcom/miui/home/recents/views/RecentsContainer;->mPackageNamesList:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mSmallWindowListRecyclerView:Lcom/miui/home/smallwindow/SmallWindowListRecyclerView;

    invoke-virtual {v0}, Lcom/miui/home/smallwindow/SmallWindowListRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/miui/home/smallwindow/BaseDelegateAdapter;

    iget-object v2, p0, Lcom/miui/home/recents/views/RecentsContainer;->mSelectedList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/miui/home/smallwindow/BaseDelegateAdapter;->setSelectedCount(I)V

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mSmallWindowListRecyclerView:Lcom/miui/home/smallwindow/SmallWindowListRecyclerView;

    iget-object v2, p0, Lcom/miui/home/recents/views/RecentsContainer;->mPackageNamesList:Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/miui/home/smallwindow/SmallWindowListRecyclerView;->setData(Ljava/util/List;)V

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mSelectedView:Lcom/miui/home/smallwindow/SmallWindowSelectedView;

    iget-object v2, p0, Lcom/miui/home/recents/views/RecentsContainer;->mSelectedList:Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/miui/home/smallwindow/SmallWindowSelectedView;->setData(Ljava/util/List;)V

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mEditView:Lcom/miui/home/smallwindow/SmallWindowEditView;

    iget-object v2, p0, Lcom/miui/home/recents/views/RecentsContainer;->mSelectedList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/smallwindow/SmallWindowEditView;->setData(Ljava/util/List;I)V

    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentsContainer;->updateSelectedEmptyView()V

    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method private updateSmallWindowListRecyclerViewMargin()V
    .locals 4

    iget-boolean v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mIsSupportSmallWindow:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mSmallWindowContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsContainer;->isLandscapeVisually()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isKeepRecentsViewPortrait()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceHeight()I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceWidth()I

    move-result v1

    :goto_0
    int-to-float v2, v1

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsContainer;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/home/recents/util/Utilities;->getTaskViewScale(Landroid/content/Context;)F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x3

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->keepStatusBarShowingForBetterPerformance()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsContainer;->isLandscapeVisually()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentsContainer;->isUseFixedRotationTransform()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070592

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070591

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    :goto_1
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v1, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/miui/home/recents/views/RecentsContainer;->mSmallWindowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void
.end method

.method private updateSmallWindowMode(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mIsSupportSmallWindow:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mIsShowSmallWindowRecyclerView:Z

    if-ne p1, v0, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mSuggestionList:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentsContainer;->updateSuggestionList()V

    :cond_3
    iput-boolean p1, p0, Lcom/miui/home/recents/views/RecentsContainer;->mIsShowSmallWindowRecyclerView:Z

    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentsContainer;->updateTaskStackViewTranslation()V

    invoke-direct {p0, p1}, Lcom/miui/home/recents/views/RecentsContainer;->showOrHideSmallWindowContainer(Z)V

    return-void
.end method

.method private updateSuggestionList()V
    .locals 3

    new-instance v0, Lcom/miui/home/recents/views/-$$Lambda$RecentsContainer$Vdn0d0-ulpSasIE5O7asKF60YMM;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/views/-$$Lambda$RecentsContainer$Vdn0d0-ulpSasIE5O7asKF60YMM;-><init>(Lcom/miui/home/recents/views/RecentsContainer;)V

    new-instance v1, Lcom/miui/home/recents/views/-$$Lambda$RecentsContainer$TYIU7iN1EYtYcdQZ4j5Igfu7sdE;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/views/-$$Lambda$RecentsContainer$TYIU7iN1EYtYcdQZ4j5Igfu7sdE;-><init>(Lcom/miui/home/recents/views/RecentsContainer;)V

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method

.method private updateTaskStackViewTranslation()V
    .locals 4

    iget-boolean v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mIsSupportSmallWindow:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentsView:Lcom/miui/home/recents/views/RecentsView;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mIsShowSmallWindowRecyclerView:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsContainer;->isLandscapeVisually()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mSmallWindowContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/widget/LinearLayout;->measure(II)V

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mSmallWindowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v0

    iget-object v1, p0, Lcom/miui/home/recents/views/RecentsContainer;->mSmallWindowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lcom/miui/home/recents/views/RecentsContainer;->mTxtSmallWindowContainer:Lcom/miui/home/recents/views/AdaptiveLinearLayout;

    invoke-virtual {v1}, Lcom/miui/home/recents/views/AdaptiveLinearLayout;->getBottom()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->keepStatusBarShowingForBetterPerformance()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsContainer;->isLandscapeVisually()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentsContainer;->isUseFixedRotationTransform()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getStatusBarHeight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentsView:Lcom/miui/home/recents/views/RecentsView;

    invoke-virtual {v1}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskStackView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentsView:Lcom/miui/home/recents/views/RecentsView;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_0
    return-void

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public dismissRecentsToHome()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsContainer;->dismissRecentsToHome(Z)V

    return-void
.end method

.method dismissRecentsToHome(Z)V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentMenuView:Lcom/miui/home/recents/views/RecentMenuView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/miui/home/recents/views/RecentMenuView;->removeMenu(ZZ)Z

    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentsView:Lcom/miui/home/recents/views/RecentsView;

    invoke-virtual {p1}, Lcom/miui/home/recents/views/RecentsView;->startHome()V

    const p1, 0x7f110026

    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->announceForAccessibility(I)V

    return-void
.end method

.method dismissRecentsToLaunchTargetTaskOrHome()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsContainer;->dismissRecentsToLaunchTargetTaskOrHome(Ljava/lang/String;)V

    return-void
.end method

.method dismissRecentsToLaunchTargetTaskOrHome(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/miui/home/recents/views/RecentsContainer;->dismissRecentsToLaunchTargetTaskOrHome(Ljava/lang/String;Z)V

    return-void
.end method

.method dismissRecentsToLaunchTargetTaskOrHome(Ljava/lang/String;Z)V
    .locals 7

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentsView:Lcom/miui/home/recents/views/RecentsView;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsView;->getRunningTaskView()Lcom/miui/home/recents/views/TaskView;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskView;->getBasePackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskView;->getBasePackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/miui/home/recents/views/TaskView;->launchTask(ZZZZZ)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    invoke-virtual {v1, p1}, Lcom/miui/home/recents/views/TaskView;->launchTask(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsContainer;->dismissRecentsToHome()V

    :goto_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mIsNeedSkipTouch:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mIsFsAppToHomeAnimating:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mIsExitRecentsAnimating:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const-string p1, "RecentsContainer"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "don\'t dispatch touch because mIsNeedSkipTouch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/home/recents/views/RecentsContainer;->mIsNeedSkipTouch:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsFsAppToHomeAnimating="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/home/recents/views/RecentsContainer;->mIsFsAppToHomeAnimating:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsExitRecentsAnimating="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/home/recents/views/RecentsContainer;->mIsExitRecentsAnimating:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/RecentsContainer;->setIsNeedSkipTouch(Z)V

    return p1
.end method

.method public enterRecentsOfFsGesture()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentsContainer;->updateSuggestionList()V

    return-void
.end method

.method public exitLandscapeOverview()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsContainer;->showLandscapeOverviewGestureView(Z)V

    iput-boolean v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mIsInLandscapeOverview:Z

    return-void
.end method

.method public getFormatedMemory(JZZ)Ljava/lang/String;
    .locals 8

    const-wide/16 v0, 0x400

    div-long/2addr p1, v0

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsContainer;->getContext()Landroid/content/Context;

    move-result-object p3

    const p4, 0x7f110454

    new-array v0, v2, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-virtual {p3, p4, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, ""

    if-eqz p4, :cond_1

    iget p4, p0, Lcom/miui/home/recents/views/RecentsContainer;->mIsOpenExternalRam:I

    if-ne p4, v2, :cond_1

    iget p4, p0, Lcom/miui/home/recents/views/RecentsContainer;->mExternalRam:F

    const/4 v3, 0x0

    cmpl-float p4, p4, v3

    if-lez p4, :cond_1

    new-instance p4, Ljava/text/DecimalFormat;

    const-string v0, "#0.0"

    invoke-direct {p4, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "+"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/miui/home/recents/views/RecentsContainer;->mExternalRam:F

    float-to-double v3, v3

    invoke-virtual {p4, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    const-wide/high16 v3, 0x4090000000000000L    # 1024.0

    const-wide/high16 v5, 0x4024000000000000L    # 10.0

    if-eqz p3, :cond_2

    long-to-double p1, p1

    div-double/2addr p1, v3

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    mul-double/2addr p1, v5

    double-to-long p1, p1

    goto :goto_0

    :cond_2
    long-to-double p1, p1

    mul-double/2addr p1, v5

    div-double/2addr p1, v3

    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    :goto_0
    const-wide/16 p3, 0xa

    div-long v3, p1, p3

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsContainer;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f110451

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    rem-long/2addr p1, p3

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-virtual {v5, v6, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getFreeMemory()J
    .locals 5

    :try_start_0
    invoke-static {}, Lcom/miui/daemon/performance/PerfShielderManager;->getFreeMemory()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "RecentsContainer"

    const-string v2, "getFreeMemory"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-wide/16 v0, 0x0

    :goto_0
    const-string v2, "RecentsContainer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFreeMemory:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getRecentMenuView()Lcom/miui/home/recents/views/RecentMenuView;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentMenuView:Lcom/miui/home/recents/views/RecentMenuView;

    return-object v0
.end method

.method public getRecentsRotation()I
    .locals 1

    iget v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentsContainerRotation:I

    return v0
.end method

.method public getRecentsView()Lcom/miui/home/recents/views/RecentsView;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentsView:Lcom/miui/home/recents/views/RecentsView;

    return-object v0
.end method

.method public getStackTaskCount()I
    .locals 1

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentsView:Lcom/miui/home/recents/views/RecentsView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsView;->getStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentsView:Lcom/miui/home/recents/views/RecentsView;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsView;->getStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/TaskStack;->getStackTaskCount()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hideFakeNavBarForHidingGestureLine(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mFakeNavBar:Lcom/miui/home/recents/views/FakeNavigationBarView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v0, p1}, Lcom/miui/home/recents/views/FakeNavigationBarView;->setAlpha(F)V

    return-void
.end method

.method public isInLandscapeOverview()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mIsInLandscapeOverview:Z

    return v0
.end method

.method public isLandscapeVisually()Z
    .locals 2

    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentsContainer;->isUseFixedRotationTransform()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsContainer;->getRecentsRotation()I

    move-result v0

    invoke-static {v0}, Lcom/miui/home/recents/util/RotationHelper;->isLandscapeRotation(I)Z

    move-result v0

    return v0

    :cond_0
    iget v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mCurrentOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNeedSkipTouch()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mIsNeedSkipTouch:Z

    return v0
.end method

.method public isOneKeyCleanAnimating()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mIsOneKeyCleanAnimating:Z

    return v0
.end method

.method public isRecentsRecommendViewVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mIsRecentsRecommendViewVisible:Z

    return v0
.end method

.method public killProcess(Lcom/android/systemui/shared/recents/model/Task;)V
    .locals 2

    invoke-static {}, Lcom/miui/home/launcher/common/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/miui/home/recents/views/RecentsContainer$16;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/recents/views/RecentsContainer$16;-><init>(Lcom/miui/home/recents/views/RecentsContainer;Lcom/android/systemui/shared/recents/model/Task;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAppChecked(Lcom/miui/home/smallwindow/ItemInfo;Z)V
    .locals 13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/miui/home/recents/views/RecentsContainer;->mLastClick:J

    sub-long v2, v0, v2

    sget v4, Lcom/miui/home/recents/views/RecentsContainer;->BUTTOM_INTERVAL:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    return-void

    :cond_0
    iput-wide v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mLastClick:J

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mSelectedView:Lcom/miui/home/smallwindow/SmallWindowSelectedView;

    invoke-virtual {v0}, Lcom/miui/home/smallwindow/SmallWindowSelectedView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/miui/home/smallwindow/SmallWindowSelectedAdapter;

    iget-object v1, p0, Lcom/miui/home/recents/views/RecentsContainer;->mEditView:Lcom/miui/home/smallwindow/SmallWindowEditView;

    invoke-virtual {v1}, Lcom/miui/home/smallwindow/SmallWindowEditView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    check-cast v1, Lcom/miui/home/smallwindow/SmallWindowEditAdapter;

    invoke-virtual {v0}, Lcom/miui/home/smallwindow/SmallWindowSelectedAdapter;->getItemInfoList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1}, Lcom/miui/home/smallwindow/SmallWindowEditAdapter;->getItemInfoList()Ljava/util/ArrayList;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz p2, :cond_2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p2

    sget v5, Lcom/miui/home/smallwindow/SmallWindowSelectedAdapter;->SELECTED_LIST_MAX_SIZE:I

    invoke-virtual {v0, v5}, Lcom/miui/home/smallwindow/SmallWindowSelectedAdapter;->notifyItemInserted(I)V

    sget v5, Lcom/miui/home/smallwindow/SmallWindowSelectedAdapter;->SELECTED_LIST_MAX_SIZE:I

    new-instance v12, Lcom/miui/home/smallwindow/ItemInfo;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, v12

    invoke-direct/range {v6 .. v11}, Lcom/miui/home/smallwindow/ItemInfo;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v5, v12}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v0, p2}, Lcom/miui/home/smallwindow/SmallWindowSelectedAdapter;->notifyItemRemoved(I)V

    invoke-virtual {p1}, Lcom/miui/home/smallwindow/ItemInfo;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/miui/home/recents/views/RecentsContainer;->getSuggestionIndex(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v3, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/2addr p2, v4

    invoke-virtual {v1, p2}, Lcom/miui/home/smallwindow/SmallWindowEditAdapter;->notifyItemInserted(I)V

    iget-object p2, p0, Lcom/miui/home/recents/views/RecentsContainer;->mSelectedList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    sget v0, Lcom/miui/home/smallwindow/SmallWindowSelectedAdapter;->SELECTED_LIST_MAX_SIZE:I

    if-ne p2, v0, :cond_1

    invoke-virtual {v1, v4}, Lcom/miui/home/smallwindow/SmallWindowEditAdapter;->updateBadgeImage(Z)V

    :cond_1
    iget-object p2, p0, Lcom/miui/home/recents/views/RecentsContainer;->mSelectedList:Ljava/util/List;

    invoke-virtual {p1}, Lcom/miui/home/smallwindow/ItemInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/miui/home/recents/views/RecentsContainer;->mSelectedList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    sget v5, Lcom/miui/home/smallwindow/SmallWindowSelectedAdapter;->SELECTED_LIST_MAX_SIZE:I

    const/4 v6, 0x0

    if-ne p2, v5, :cond_3

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsContainer;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsContainer;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f110432

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-array v0, v4, [Ljava/lang/Object;

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v6

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_3
    iget-object p2, p0, Lcom/miui/home/recents/views/RecentsContainer;->mSelectedList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object p2, p0, Lcom/miui/home/recents/views/RecentsContainer;->mSelectedList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/miui/home/smallwindow/SmallWindowSelectedAdapter;->notifyItemRemoved(I)V

    iget-object p2, p0, Lcom/miui/home/recents/views/RecentsContainer;->mSelectedList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {v2, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/miui/home/smallwindow/SmallWindowSelectedAdapter;->notifyItemInserted(I)V

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p2

    add-int/2addr p2, v4

    invoke-virtual {v1, p2}, Lcom/miui/home/smallwindow/SmallWindowEditAdapter;->notifyItemRemoved(I)V

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/miui/home/recents/views/RecentsContainer;->mSelectedList:Ljava/util/List;

    invoke-virtual {p1}, Lcom/miui/home/smallwindow/ItemInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsContainer;->mSelectedList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sget p2, Lcom/miui/home/smallwindow/SmallWindowSelectedAdapter;->SELECTED_LIST_MAX_SIZE:I

    if-ne p1, p2, :cond_4

    invoke-virtual {v1, v6}, Lcom/miui/home/smallwindow/SmallWindowEditAdapter;->updateBadgeImage(Z)V

    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsContainer;->mSelectedList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/miui/home/smallwindow/SmallWindowEditAdapter;->setSelectedCount(I)V

    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentsContainer;->saveSelectedList()V

    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentsContainer;->updateSelectedEmptyView()V

    return-void
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 4

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    const-string v1, "RecentsContainer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onApplyWindowInsets, insets="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", rotation="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/miui/home/recents/views/RecentsContainer;->createSystemInsetsFromWindowInsets(Landroid/view/WindowInsets;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/miui/home/recents/views/RecentsContainer;->updateAllInsets(Landroid/graphics/Rect;I)V

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->hasBeenResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mIsLauncherVisible:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mIsLauncherStableVisible:Z

    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentsContainer;->startCheckLauncherStableVisible()V

    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentsView:Lcom/miui/home/recents/views/RecentsView;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentMenuView:Lcom/miui/home/recents/views/RecentMenuView;

    iget-object v1, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentsView:Lcom/miui/home/recents/views/RecentsView;

    invoke-virtual {v1}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/views/RecentMenuView;->setTaskStackView(Lcom/miui/home/recents/views/TaskStackView;)V

    :cond_1
    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentsContainer;->registerContentObservers()V

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentMenuView:Lcom/miui/home/recents/views/RecentMenuView;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentMenuView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentMenuView:Lcom/miui/home/recents/views/RecentMenuView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/views/RecentMenuView;->removeMenu(Z)Z

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentsContainer;->isSmallWindowEditShow()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentsContainer;->exitSmallWindowEdit()V

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/miui/home/recents/util/Utilities;->isUseRemberWindows()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/miui/home/recents/ForegroundTaskHelper;->getInstance()Lcom/miui/home/recents/ForegroundTaskHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/ForegroundTaskHelper;->startForegroundSmallWindows()V

    :cond_2
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsContainer;->dismissRecentsToLaunchTargetTaskOrHome()V

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->usingFsGesture()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "backGesture"

    goto :goto_0

    :cond_3
    const-string v0, "clickBackKey"

    :goto_0
    invoke-static {v0}, Lcom/miui/home/launcher/AnalyticalDataCollectorForRecents;->sendHideRecentsEvent(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5

    iget v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mCurrentOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, p1}, Lcom/miui/home/recents/views/RecentsContainer;->setCurrentOrientation(I)V

    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsContainer;->mMemoryAndClearContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    iget-object v1, p0, Lcom/miui/home/recents/views/RecentsContainer;->mMemoryAndClearContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Lcom/miui/home/recents/views/RecentsContainer;->mMemoryAndClearContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070096

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsContainer;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    const-string v0, "RecentsContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged, rotation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/launcher/common/Utilities;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsContainer;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/home/launcher/common/Utilities;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v3, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-direct {p0, v0, p1}, Lcom/miui/home/recents/views/RecentsContainer;->updateAllInsets(Landroid/graphics/Rect;I)V

    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentsContainer;->updateRecentsRecommendViewVisible()V

    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentsContainer;->updateSmallWindowListRecyclerViewMargin()V

    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentsContainer;->updateTaskStackViewTranslation()V

    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentsContainer;->updateSmallWindowContainerMaxWidth()V

    :cond_0
    return-void
.end method

.method public onDarkModeChange()V
    .locals 3

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentMenuView:Lcom/miui/home/recents/views/RecentMenuView;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentMenuView;->onDarkModeChange()V

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mClearAnimView:Lcom/miui/home/recents/views/CircleAndTickAnimView;

    const v1, 0x7f0801b1

    const v2, 0x7f080638

    invoke-virtual {v0, v2, v1}, Lcom/miui/home/recents/views/CircleAndTickAnimView;->setDrawables(II)V

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mClearAnimView:Lcom/miui/home/recents/views/CircleAndTickAnimView;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsContainer;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/views/CircleAndTickAnimView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentsView:Lcom/miui/home/recents/views/RecentsView;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsView;->onDarkModeChanged()V

    return-void
.end method

.method public onDestroy(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/home/recents/views/RecentsContainer;->notifyRecentTaskState(Landroid/content/Context;Z)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mLauncherStableVisibleChecker:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsContainer;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentsContainer;->unRegisterContentObservers()V

    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentsContainer;->removeExitMultiModeBtnIfNeeded()V

    return-void
.end method

.method public onDisplayRotationChanged(I)V
    .locals 1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isKeepRecentsViewPortrait()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/miui/home/recents/util/RotationHelper;->isLandscapeRotation(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/RecentsContainer;->setIsNeedSkipTouch(Z)V

    return-void
.end method

.method public onExitState()V
    .locals 2

    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->clearRemoteAnimationProvider()V

    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/miui/home/recents/views/RecentsContainer;->notifyRecentTaskState(Landroid/content/Context;Z)V

    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentsContainer;->resetToNormalState()V

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentsView:Lcom/miui/home/recents/views/RecentsView;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentsView:Lcom/miui/home/recents/views/RecentsView;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackView;->onExitState()V

    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsContainer;->exitLandscapeOverview()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 6

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f0a0291

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/views/RecentsView;

    iput-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentsView:Lcom/miui/home/recents/views/RecentsView;

    const v0, 0x7f0a03a5

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mTxtMemoryContainer:Landroid/view/ViewGroup;

    const v0, 0x7f0a03a6

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mTxtMemoryInfo1:Landroid/widget/TextView;

    const v0, 0x7f0a03a7

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mTxtMemoryInfo2:Landroid/widget/TextView;

    const v0, 0x7f0a02fd

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mSeparatorForMemoryInfo:Landroid/view/View;

    const v0, 0x7f0a0202

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mMemoryAndClearContainer:Landroid/view/ViewGroup;

    const v0, 0x7f0a00c5

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/views/CircleAndTickAnimView;

    iput-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mClearAnimView:Lcom/miui/home/recents/views/CircleAndTickAnimView;

    const v0, 0x7f0a028b

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/views/RecentsDecorations;

    iput-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentsDecorations:Lcom/miui/home/recents/views/RecentsDecorations;

    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentsContainer;->addRecentsRecommendViewIfNeeded()V

    const v0, 0x7f0a0312

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mSmallWindowEdit:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0313

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mSmallWindowEditContent:Landroid/widget/TextView;

    const v0, 0x7f0a009b

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mButtonEdit:Landroid/widget/ImageButton;

    const v0, 0x7f0a0311

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mCompleteButton:Landroid/widget/Button;

    const v0, 0x7f0a0316

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/smallwindow/SmallWindowSelectedView;

    iput-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mSelectedView:Lcom/miui/home/smallwindow/SmallWindowSelectedView;

    const v0, 0x7f0a030f

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/smallwindow/SmallWindowEditView;

    iput-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mEditView:Lcom/miui/home/smallwindow/SmallWindowEditView;

    const v0, 0x7f0a030e

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mSmallWindowContainer:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0140

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mEmptyTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mSmallWindowEditContent:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f11042d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/16 v4, 0xa

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a0289

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/views/RecentMenuView;

    iput-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentMenuView:Lcom/miui/home/recents/views/RecentMenuView;

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentsView:Lcom/miui/home/recents/views/RecentsView;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentMenuView:Lcom/miui/home/recents/views/RecentMenuView;

    iget-object v1, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentsView:Lcom/miui/home/recents/views/RecentsView;

    invoke-virtual {v1}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/views/RecentMenuView;->setTaskStackView(Lcom/miui/home/recents/views/TaskStackView;)V

    :cond_0
    const v0, 0x7f0a014e

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/views/FakeNavigationBarView;

    iput-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mFakeNavBar:Lcom/miui/home/recents/views/FakeNavigationBarView;

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mFakeNavBar:Lcom/miui/home/recents/views/FakeNavigationBarView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/views/FakeNavigationBarView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mClearAnimView:Lcom/miui/home/recents/views/CircleAndTickAnimView;

    new-instance v3, Lcom/miui/home/recents/views/RecentsContainer$1;

    invoke-direct {v3, p0}, Lcom/miui/home/recents/views/RecentsContainer$1;-><init>(Lcom/miui/home/recents/views/RecentsContainer;)V

    invoke-virtual {v0, v3}, Lcom/miui/home/recents/views/CircleAndTickAnimView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mClearAnimView:Lcom/miui/home/recents/views/CircleAndTickAnimView;

    new-instance v3, Lcom/miui/home/recents/views/RecentsContainer$2;

    invoke-direct {v3, p0}, Lcom/miui/home/recents/views/RecentsContainer$2;-><init>(Lcom/miui/home/recents/views/RecentsContainer;)V

    invoke-virtual {v0, v3}, Lcom/miui/home/recents/views/CircleAndTickAnimView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInMultiWindowMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mIsInMultiWindowMode:Z

    const v0, 0x7f0a03aa

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/views/AdaptiveLinearLayout;

    iput-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mTxtSmallWindowContainer:Lcom/miui/home/recents/views/AdaptiveLinearLayout;

    const v0, 0x7f0a03a9

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mTxtSmallWindow:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mIsSupportSmallWindow:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mTxtSmallWindowContainer:Lcom/miui/home/recents/views/AdaptiveLinearLayout;

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/views/AdaptiveLinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_1
    new-array v0, v2, [Landroid/view/View;

    iget-object v1, p0, Lcom/miui/home/recents/views/RecentsContainer;->mTxtSmallWindow:Landroid/widget/TextView;

    aput-object v1, v0, v5

    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/views/RecentsContainer;->mTxtSmallWindow:Landroid/widget/TextView;

    new-array v3, v5, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {v0, v1, v3}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mTxtSmallWindow:Landroid/widget/TextView;

    new-instance v1, Lcom/miui/home/recents/views/RecentsContainer$3;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/views/RecentsContainer$3;-><init>(Lcom/miui/home/recents/views/RecentsContainer;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mSelectedView:Lcom/miui/home/smallwindow/SmallWindowSelectedView;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/miui/home/smallwindow/SmallWindowSelectedView;->initView(Landroid/content/Context;Lcom/miui/home/smallwindow/BadgeCheckedListener;)V

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mEditView:Lcom/miui/home/smallwindow/SmallWindowEditView;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/miui/home/smallwindow/SmallWindowEditView;->initView(Landroid/content/Context;Lcom/miui/home/smallwindow/BadgeCheckedListener;)V

    new-array v0, v2, [Landroid/view/View;

    iget-object v1, p0, Lcom/miui/home/recents/views/RecentsContainer;->mButtonEdit:Landroid/widget/ImageButton;

    aput-object v1, v0, v5

    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/views/RecentsContainer;->mButtonEdit:Landroid/widget/ImageButton;

    new-array v3, v5, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {v0, v1, v3}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mButtonEdit:Landroid/widget/ImageButton;

    new-instance v1, Lcom/miui/home/recents/views/RecentsContainer$4;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/views/RecentsContainer$4;-><init>(Lcom/miui/home/recents/views/RecentsContainer;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-array v0, v2, [Landroid/view/View;

    iget-object v1, p0, Lcom/miui/home/recents/views/RecentsContainer;->mCompleteButton:Landroid/widget/Button;

    aput-object v1, v0, v5

    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/views/RecentsContainer;->mCompleteButton:Landroid/widget/Button;

    new-array v2, v5, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {v0, v1, v2}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mCompleteButton:Landroid/widget/Button;

    new-instance v1, Lcom/miui/home/recents/views/RecentsContainer$5;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/views/RecentsContainer$5;-><init>(Lcom/miui/home/recents/views/RecentsContainer;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0315

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/smallwindow/SmallWindowListRecyclerView;

    iput-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mSmallWindowListRecyclerView:Lcom/miui/home/smallwindow/SmallWindowListRecyclerView;

    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentsContainer;->updateSmallWindowListRecyclerViewMargin()V

    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentsContainer;->updateSmallWindowContainerMaxWidth()V

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mSmallWindowListRecyclerView:Lcom/miui/home/smallwindow/SmallWindowListRecyclerView;

    new-instance v1, Lcom/miui/home/recents/views/RecentsContainer$6;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/views/RecentsContainer$6;-><init>(Lcom/miui/home/recents/views/RecentsContainer;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/smallwindow/SmallWindowListRecyclerView;->setItemViewCallback(Lcom/miui/home/smallwindow/ItemViewCallback;)V

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v0}, Lcom/miui/home/recents/views/RecentsContainer;->setCurrentOrientation(I)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentsContainer;->isUseFixedRotationTransform()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentsContainerRotation:I

    const-string v1, "RecentsContainer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onMeasure, rotation="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0}, Lcom/miui/home/recents/views/RecentsContainer;->updateRecentsContainerRotation(I)V

    invoke-static {v0}, Lcom/miui/home/recents/util/RotationHelper;->isLandscapeRotation(I)Z

    move-result v1

    if-eqz v1, :cond_0

    move v4, p2

    move p2, p1

    move p1, v4

    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/recents/views/RecentsContainer;->rotateRecentsContainerWhenRtl(III)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/recents/views/RecentsContainer;->rotateRecentsContainer(III)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsContainer;->setRotation(F)V

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsContainer;->setTranslationX(F)V

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsContainer;->setTranslationY(F)V

    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public onMessageEvent(Lcom/android/systemui/shared/recents/model/TaskStackChangedEvent;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentsView:Lcom/miui/home/recents/views/RecentsView;

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/TaskStackChangedEvent;->mTaskIds:Ljava/util/Set;

    invoke-virtual {v0, p1}, Lcom/miui/home/recents/views/RecentsView;->isAnyWorldCirculateTaskIdInvalid(Ljava/util/Set;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/RecentsContainer;->dismissRecentsToHome(Z)V

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsContainer;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f1101b5

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/LauncherLifecycleMessage;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/LauncherLifecycleMessage;->getLifecycle()I

    move-result p1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "should not arrive here, do NOT add type for LauncherLifecycleMessage"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/home/recents/views/RecentsContainer;->mIsLauncherVisible:Z

    iput-boolean v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mIsLauncherStableVisible:Z

    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentsContainer;->startCheckLauncherStableVisible()V

    goto :goto_0

    :pswitch_1
    iput-boolean v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mIsLauncherVisible:Z

    iput-boolean v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mIsLauncherStableVisible:Z

    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentsContainer;->cancelCheckLauncherStableVisible()V

    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentsContainer;->updateExitMultiModeBtnVisible()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/SecurityHideMessage;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentsContainer;->updateSuggestionList()V

    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/recents/messages/AllTaskViewsDismissedEvent;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    iget-boolean p1, p1, Lcom/miui/home/recents/messages/AllTaskViewsDismissedEvent;->mFromRemoveAllTask:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsContainer;->dismissRecentsToLaunchTargetTaskOrHome()V

    :cond_0
    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/recents/messages/CleanInRecentsEvents;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentsContainer;->cleanInRecents()V

    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/recents/messages/DeleteTaskDataEvent;)V
    .locals 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p1, Lcom/miui/home/recents/messages/DeleteTaskDataEvent;->task:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v1, v1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/miui/home/recents/messages/DeleteTaskDataEvent;->task:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v2, v2, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v2, v2, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-static {v0, v1, v2}, Lcom/miui/home/recents/util/KeepAliveUtil;->shouldKeeAlive(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lcom/miui/home/recents/messages/DeleteTaskDataEvent;->task:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/recents/RecentsModel;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/RecentsModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/recents/RecentsModel;->getTaskLoader()Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->deleteTaskData(Lcom/android/systemui/shared/recents/model/Task;Z)V

    const-string v1, "RecentsContainer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeTask: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/Task;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p1, p1, Lcom/miui/home/recents/messages/DeleteTaskDataEvent;->remainProcess:Z

    if-nez p1, :cond_1

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsContainer;->killProcess(Lcom/android/systemui/shared/recents/model/Task;)V

    :cond_1
    invoke-static {}, Lcom/miui/home/recents/util/Utilities;->isUseRemberWindows()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0, v0}, Lcom/miui/home/recents/views/RecentsContainer;->checkIfRemoveForegroundTask(Lcom/android/systemui/shared/recents/model/Task;)V

    :cond_2
    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/recents/messages/FsGestureEnterRecentsCompleteEvent;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentsView:Lcom/miui/home/recents/views/RecentsView;

    invoke-virtual {p1}, Lcom/miui/home/recents/views/RecentsView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentsDrawnEventListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentsDecorations:Lcom/miui/home/recents/views/RecentsDecorations;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/views/RecentsDecorations;->setAlpha(F)V

    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsContainer;->mBackground:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :cond_0
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentsView:Lcom/miui/home/recents/views/RecentsView;

    invoke-virtual {p1}, Lcom/miui/home/recents/views/RecentsView;->getTaskViews()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/recents/views/TaskView;

    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskView;->getHeaderView()Lcom/miui/home/recents/views/TaskViewHeader;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/home/recents/views/TaskViewHeader;->setAlpha(F)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsContainer;->isInLandscapeOverview()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/RecentsContainer;->showLandscapeOverviewGestureView(Z)V

    :cond_2
    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/recents/messages/FsGestureEnterRecentsHoldStateEvent;)V
    .locals 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-wide/16 v0, 0xc8

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/miui/home/recents/views/RecentsContainer;->startRecentsContainerFadeOutAnim(JJ)V

    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/miui/home/recents/views/RecentsContainer;->startBackgroundFadeOutAnim(JJ)V

    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/recents/messages/FsGestureEnterRecentsPrepareEvent;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsContainer;->mBackground:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :cond_0
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentsDecorations:Lcom/miui/home/recents/views/RecentsDecorations;

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/views/RecentsDecorations;->setAlpha(F)V

    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentsView:Lcom/miui/home/recents/views/RecentsView;

    invoke-virtual {p1}, Lcom/miui/home/recents/views/RecentsView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentsDrawnEventListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/recents/messages/FsGestureEnterRecentsZoomEvent;)V
    .locals 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x104

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/miui/home/recents/views/RecentsContainer;->startRecentsContainerFadeInAnim(JJ)V

    const-wide/16 v2, 0xc8

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/miui/home/recents/views/RecentsContainer;->startBackgroundFadeInAnim(JJ)V

    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentsView:Lcom/miui/home/recents/views/RecentsView;

    invoke-virtual {p1}, Lcom/miui/home/recents/views/RecentsView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentsDrawnEventListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    invoke-static {}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getInstance()Lcom/miui/home/recents/util/SpringAnimationUtils;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentsView:Lcom/miui/home/recents/views/RecentsView;

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/util/SpringAnimationUtils;->startFsEnterRecentsZoomAnim(Lcom/miui/home/recents/views/RecentsView;)V

    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/recents/messages/FsGestureExitRecentsHoldStateEvent;)V
    .locals 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-wide/16 v0, 0xc8

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/miui/home/recents/views/RecentsContainer;->startRecentsContainerFadeInAnim(JJ)V

    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/miui/home/recents/views/RecentsContainer;->startBackgroundFadeInAnim(JJ)V

    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/recents/messages/FsGestureStartRecentsModeEvent;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentsContainer;->resetToNormalState()V

    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/recents/messages/HideMemoryAndDockEvent;)V
    .locals 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-wide/16 v0, 0x0

    const-wide/16 v2, 0xb4

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/miui/home/recents/views/RecentsContainer;->startRecentsContainerFadeOutAnim(JJ)V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/miui/home/recents/views/RecentsContainer;->updateSmallWindowMode(Z)V

    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/recents/messages/ScrollerFlingFinishEvent;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/recents/messages/ShowApplicationInfoEvent;)V
    .locals 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/app/TaskStackBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p1, Lcom/miui/home/recents/messages/ShowApplicationInfoEvent;->task:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v2, v2, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v2}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/miui/home/recents/messages/ShowApplicationInfoEvent;->task:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v3, v3, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget-object v3, v3, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    iget-object p1, p1, Lcom/miui/home/recents/messages/ShowApplicationInfoEvent;->task:Lcom/android/systemui/shared/recents/model/Task;

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget p1, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-static {v1, v2, v3, p1}, Lcom/miui/home/launcher/util/PackageManagerHelper;->createAppDetailActivityIntent(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/TaskStackBuilder;->addNextIntentWithParentStack(Landroid/content/Intent;)Landroid/app/TaskStackBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/shared/recents/system/ActivityOptionsCompat;->makeCustomAnimation(Landroid/content/Context;)Landroid/app/ActivityOptions;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/TaskStackBuilder;->startActivities(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/miui/home/recents/util/Utilities;->isAddToLauncher(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/RecentsContainer;->dismissRecentsToHome(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "RecentsContainer"

    const-string v1, "ShowApplicationInfo"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/recents/messages/ShowMemoryAndDockEvent;)V
    .locals 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    invoke-virtual {p1}, Lcom/miui/home/recents/messages/ShowMemoryAndDockEvent;->showDock()Z

    move-result p1

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x0

    const-wide/16 v2, 0xb4

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/miui/home/recents/views/RecentsContainer;->startRecentsContainerFadeInAnim(JJ)V

    :cond_0
    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/recents/messages/StackScrollChangedEvent;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    iget p1, p1, Lcom/miui/home/recents/messages/StackScrollChangedEvent;->mTaskStackViewScrollY:I

    invoke-direct {p0, p1}, Lcom/miui/home/recents/views/RecentsContainer;->updateDecorationsTranslationY(I)V

    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/smallwindow/messages/StartSmallWindowEvent;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    invoke-virtual {p1}, Lcom/miui/home/smallwindow/messages/StartSmallWindowEvent;->getPkgName()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/miui/home/recents/views/RecentsContainer;->dismissRecentsToLaunchTargetTaskOrHome(Ljava/lang/String;Z)V

    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 6

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/recents/RecentsModel;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/RecentsModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/RecentsModel;->clearRecentsTaskLoadPlan()V

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/recents/RecentsModel;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/RecentsModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/RecentsModel;->getTaskLoader()Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/recents/RecentsModel;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/RecentsModel;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsContainer;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Lcom/miui/home/recents/RecentsModel;->getSmartRecentsTaskLoadPlan(Landroid/content/Context;I)Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;

    invoke-direct {v2}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;-><init>()V

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsContainer;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->loadTasks(Landroid/content/Context;Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;)V

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->getTaskStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/TaskStack;->getStackTaskCount()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v4

    new-instance v5, Lcom/miui/home/recents/messages/MultiWindowStateChangedEvent;

    invoke-direct {v5, p1, v1, v0}, Lcom/miui/home/recents/messages/MultiWindowStateChangedEvent;-><init>(ZZLcom/android/systemui/shared/recents/model/TaskStack;)V

    invoke-virtual {v4, v5}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentsContainer;->setupVisible()V

    iput-boolean p1, p0, Lcom/miui/home/recents/views/RecentsContainer;->mIsInMultiWindowMode:Z

    iget-boolean p1, p0, Lcom/miui/home/recents/views/RecentsContainer;->mIsInMultiWindowMode:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentMenuView:Lcom/miui/home/recents/views/RecentMenuView;

    invoke-virtual {p1, v3}, Lcom/miui/home/recents/views/RecentMenuView;->removeMenu(Z)Z

    :cond_1
    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentsContainer;->updateExitMultiModeBtnVisible()V

    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    invoke-static {p1, v2}, Lcom/miui/home/launcher/common/BlurUtils;->fastBlurWhenEnterMultiWindowMode(Lcom/miui/home/launcher/Launcher;Z)V

    iget-boolean p1, p0, Lcom/miui/home/recents/views/RecentsContainer;->mIsInMultiWindowMode:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsContainer;->getRotation()F

    move-result p1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_2

    invoke-direct {p0, v3, v3, v3}, Lcom/miui/home/recents/views/RecentsContainer;->rotateRecentsContainer(III)V

    :cond_2
    return-void
.end method

.method public onScreenSizeChanged()V
    .locals 0

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsContainer;->updateRotation()V

    return-void
.end method

.method public onSmallestScreenWidthChanged()V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mFoldScreenModeObserver:Lcom/miui/home/launcher/common/FoldScreenModeObserver;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/miui/home/recents/views/-$$Lambda$RecentsContainer$OA8OUATYFUQtNSSxciCnvsQNiFU;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/views/-$$Lambda$RecentsContainer$OA8OUATYFUQtNSSxciCnvsQNiFU;-><init>(Lcom/miui/home/recents/views/RecentsContainer;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/common/FoldScreenModeObserver;->runWhenScreenModeChange(Lkotlin/jvm/functions/Function0;)Z

    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentMenuView:Lcom/miui/home/recents/views/RecentMenuView;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentMenuView;->onSmallestScreenWidthChanged()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/home/recents/views/RecentsContainer;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public final prepareFsGestureEnterRecents()V
    .locals 3

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentsView:Lcom/miui/home/recents/views/RecentsView;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsView;->getTaskViews()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/recents/views/TaskView;

    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskView;->getHeaderView()Lcom/miui/home/recents/views/TaskViewHeader;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/miui/home/recents/views/TaskViewHeader;->setAlpha(F)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public refreshMemoryInfo()V
    .locals 3

    new-instance v0, Lcom/miui/home/recents/views/RecentsContainer$13;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/views/RecentsContainer$13;-><init>(Lcom/miui/home/recents/views/RecentsContainer;)V

    new-instance v1, Lcom/miui/home/recents/views/RecentsContainer$14;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/views/RecentsContainer$14;-><init>(Lcom/miui/home/recents/views/RecentsContainer;)V

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method

.method public setIsExitRecentsAnimating(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/home/recents/views/RecentsContainer;->mIsExitRecentsAnimating:Z

    return-void
.end method

.method public setIsFsAppToHomeAnimating(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/home/recents/views/RecentsContainer;->mIsFsAppToHomeAnimating:Z

    return-void
.end method

.method public setIsNeedSkipTouch(Z)V
    .locals 3

    iput-boolean p1, p0, Lcom/miui/home/recents/views/RecentsContainer;->mIsNeedSkipTouch:Z

    const-string v0, "RecentsContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isNeedSkipTouch="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setOverviewStateEnabled(Z)V
    .locals 6

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/miui/home/recents/views/RecentsContainer;->notifyRecentTaskState(Landroid/content/Context;Z)V

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mClearAnimView:Lcom/miui/home/recents/views/CircleAndTickAnimView;

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/views/CircleAndTickAnimView;->stopAnimator(Z)V

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentMenuView:Lcom/miui/home/recents/views/RecentMenuView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/views/RecentMenuView;->removeMenu(Z)Z

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsContainer;->refreshMemoryInfo()V

    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentsContainer;->setupVisible()V

    sget-object v0, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    iget-boolean v0, v0, Lcom/miui/home/recents/OverviewState;->mIsFromFsGesture:Z

    if-nez v0, :cond_1

    const-wide/16 v2, 0x96

    const-wide/16 v4, 0x0

    invoke-virtual {p0, v4, v5, v2, v3}, Lcom/miui/home/recents/views/RecentsContainer;->startRecentsContainerFadeInAnim(JJ)V

    if-eqz p1, :cond_0

    move-wide v2, v4

    :cond_0
    invoke-virtual {p0, v4, v5, v2, v3}, Lcom/miui/home/recents/views/RecentsContainer;->startBackgroundFadeInAnim(JJ)V

    invoke-virtual {p0, v1}, Lcom/miui/home/recents/views/RecentsContainer;->setVisibility(I)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsContainer;->setAlpha(F)V

    sget-object v0, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    iget-boolean v0, v0, Lcom/miui/home/recents/OverviewState;->mIsIgnoreOverviewAnim:Z

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    invoke-static {}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getInstance()Lcom/miui/home/recents/util/SpringAnimationUtils;

    move-result-object p1

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsContainer;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Lcom/miui/home/recents/util/SpringAnimationUtils;->startToRecentsAnim(Lcom/miui/home/recents/views/RecentsView;Ljava/lang/Runnable;)V

    :cond_1
    iput-boolean v1, p0, Lcom/miui/home/recents/views/RecentsContainer;->mIsOneKeyCleanAnimating:Z

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsContainer;->updateRotation()V

    return-void
.end method

.method public setTaskStackView(Lcom/miui/home/recents/views/TaskStackView;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentMenuView:Lcom/miui/home/recents/views/RecentMenuView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/miui/home/recents/views/RecentMenuView;->setTaskStackView(Lcom/miui/home/recents/views/TaskStackView;)V

    :cond_0
    return-void
.end method

.method public showFakeNavBar(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mFakeNavBar:Lcom/miui/home/recents/views/FakeNavigationBarView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Lcom/miui/home/recents/views/FakeNavigationBarView;->setVisibility(I)V

    return-void
.end method

.method public showLandscapeOverviewGestureView(Z)V
    .locals 5

    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/Application;->getRecentsImpl()Lcom/miui/home/recents/BaseRecentsImpl;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsContainer;->isInLandscapeOverview()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    const-string v2, "RecentsContainer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showLandscapeOverviewGestureView: show "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/RecentsContainer;->showFakeNavBar(Z)V

    iget-boolean v1, v1, Lcom/miui/home/recents/BaseRecentsImpl;->mHideGestureLine:Z

    invoke-virtual {p0, v1}, Lcom/miui/home/recents/views/RecentsContainer;->hideFakeNavBarForHidingGestureLine(Z)V

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Launcher;->hideNavBarButton(Z)V

    :cond_0
    return-void
.end method

.method public startBackgroundFadeInAnim(JJ)V
    .locals 3

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mBackground:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    const-wide/16 v1, 0x0

    cmp-long v1, p3, v1

    const/high16 v2, 0x3f800000    # 1.0f

    if-lez v1, :cond_0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p3, p4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Lmiuix/view/animation/SineEaseInOutInterpolator;

    invoke-direct {p2}, Lmiuix/view/animation/SineEaseInOutInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsContainer;->mBackground:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :cond_1
    :goto_0
    return-void
.end method

.method public startBackgroundFadeOutAnim(JJ)V
    .locals 3

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mBackground:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    const-wide/16 v1, 0x0

    cmp-long v1, p3, v1

    const/4 v2, 0x0

    if-lez v1, :cond_0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p3, p4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Lmiuix/view/animation/SineEaseOutInterpolator;

    invoke-direct {p2}, Lmiuix/view/animation/SineEaseOutInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsContainer;->mBackground:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :cond_1
    :goto_0
    return-void
.end method

.method public startRecentsContainerFadeInAnim(JJ)V
    .locals 3

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentsDecorations:Lcom/miui/home/recents/views/RecentsDecorations;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsDecorations;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v2, Lmiuix/view/animation/SineEaseInOutInterpolator;

    invoke-direct {v2}, Lmiuix/view/animation/SineEaseInOutInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mClearAnimView:Lcom/miui/home/recents/views/CircleAndTickAnimView;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/CircleAndTickAnimView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p3, p4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Lmiuix/view/animation/SineEaseInOutInterpolator;

    invoke-direct {p2}, Lmiuix/view/animation/SineEaseInOutInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isSupportSmallWindow()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFoldDevice()Z

    move-result p1

    if-nez p1, :cond_0

    sget-boolean p1, Lcom/miui/home/launcher/ApplicationConfig;->sIsSupportRelayInRecents:Z

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/miui/home/recents/util/RemovingSmallWindowFromRecents;->shouldToast()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPocoLauncher()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsContainer;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/recents/util/RemovingSmallWindowFromRecents;->doToast(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public startRecentsContainerFadeOutAnim(JJ)V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentsDecorations:Lcom/miui/home/recents/views/RecentsDecorations;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsDecorations;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lmiuix/view/animation/SineEaseOutInterpolator;

    invoke-direct {v1}, Lmiuix/view/animation/SineEaseOutInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mClearAnimView:Lcom/miui/home/recents/views/CircleAndTickAnimView;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/CircleAndTickAnimView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const v1, 0x3f4ccccd    # 0.8f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p3, p4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Lmiuix/view/animation/SineEaseOutInterpolator;

    invoke-direct {p2}, Lmiuix/view/animation/SineEaseOutInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public updateClearContainerVisible()V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mMemoryAndClearContainer:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentsContainer;->isClearContainerVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public updateInsetsForLayoutAlgorithm()V
    .locals 3

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/miui/home/recents/views/RecentsContainer;->mAllInsets:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/miui/home/recents/views/RecentsContainer;->mAllInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentsContainerRotation:I

    invoke-direct {p0, v1, v2}, Lcom/miui/home/recents/views/RecentsContainer;->recalculateSystemInsetsTop(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentsContainerRotation:I

    invoke-direct {p0, v0, v1}, Lcom/miui/home/recents/views/RecentsContainer;->getRecentsContainerVisualRotationAllInsets(Landroid/graphics/Rect;I)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentsView:Lcom/miui/home/recents/views/RecentsView;

    invoke-virtual {v1}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentsView:Lcom/miui/home/recents/views/RecentsView;

    invoke-virtual {v1}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/home/recents/views/TaskStackView;->updateInsetsForLayoutAlgorithm(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public updateRotation()V
    .locals 1

    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getCurrentDisplayRotation()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/miui/home/recents/views/RecentsContainer;->updateRotation(I)V

    :cond_0
    return-void
.end method
