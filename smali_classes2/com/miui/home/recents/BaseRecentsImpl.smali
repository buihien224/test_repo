.class public Lcom/miui/home/recents/BaseRecentsImpl;
.super Ljava/lang/Object;
.source "BaseRecentsImpl.java"

# interfaces
.implements Lcom/android/systemui/shared/recents/AppObserver$ForegroundListener;
.implements Lcom/miui/home/smallwindow/SmallWindowStateHelper$SmallWindowStateCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/recents/BaseRecentsImpl$H;
    }
.end annotation


# instance fields
.field private final mActivityStateObserver:Lcom/miui/home/recents/ActivityObserverLauncher$ActivityObserverCallback;

.field private final mAppSwitchAnimChangeListener:Landroid/database/ContentObserver;

.field private mCastModeObserver:Landroid/database/ContentObserver;

.field private final mCloudDataObserver:Landroid/database/ContentObserver;

.field private final mContext:Landroid/content/Context;

.field private mDisplayCount:I

.field private mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private final mElderlyModeObserver:Landroid/database/ContentObserver;

.field private final mForceImmersiveNavBarListener:Landroid/database/ContentObserver;

.field private mForegroundPackageName:Ljava/lang/String;

.field private final mFsgReceiver:Landroid/content/BroadcastReceiver;

.field private mGestureStubLeft:Lcom/miui/home/recents/GestureStubView;

.field private mGestureStubRight:Lcom/miui/home/recents/GestureStubView;

.field protected mHandler:Landroid/os/Handler;

.field private mHasNavigationBar:Z

.field public mHideGestureLine:Z

.field private final mHideGestureLineListener:Landroid/database/ContentObserver;

.field private mIsChangedScreeningPkgLockState:Z

.field private mIsFsgNavBar:Z

.field private mIsInAnotherPro:Z

.field private mIsStatusBarExpansion:Z

.field private mIsUseMiuiHomeAsDefaultHome:Z

.field protected mKM:Landroid/app/KeyguardManager;

.field private final mLastConfiguration:Landroid/content/res/Configuration;

.field private mLastResumedClassName:Ljava/lang/String;

.field private mLayoutStyleObserver:Landroid/database/ContentObserver;

.field private final mLocalCtrlActs:[Ljava/lang/String;

.field private volatile mNavStubView:Lcom/miui/home/recents/NavStubView;

.field private mNoBackActListStr:Ljava/lang/String;

.field private mNoBackAndHomeActListStr:Ljava/lang/String;

.field private mNoHomeActListStr:Ljava/lang/String;

.field private final mReadCloudRunnable:Ljava/lang/Runnable;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRecentsReceiver:Lcom/miui/home/recents/RecentsReceiver;

.field private mSuperSavePowerObserver:Landroid/database/ContentObserver;

.field private mSystemUiFlags:I

.field private mTaskStackViewLayoutStyle:Lcom/miui/home/recents/TaskStackViewLayoutStyle;

.field private mThumbnailBlurManager:Lcom/miui/home/recents/ThumbnailBlurManager;

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mIsInAnotherPro:Z

    const-string v1, ""

    iput-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mForegroundPackageName:Ljava/lang/String;

    const-string v2, "com.android.systemui.fsgesture.HomeDemoAct"

    const-string v3, "com.android.systemui.fsgesture.DemoFinishAct"

    const-string v4, "com.android.systemui.fsgesture.DrawerDemoAct"

    const-string v5, "com.android.systemui.fsgesture.FsGestureBackDemoActivity"

    const-string v6, "com.android.systemui.fsgesture.AppQuickSwitchActivity"

    const-string v7, "com.android.provision.activities.CongratulationActivity"

    const-string v8, "com.xiaomi.misubscreenui.SubScreenMainActivity"

    filled-new-array/range {v2 .. v8}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mLocalCtrlActs:[Ljava/lang/String;

    const-string v1, "android.autofillservice.cts.LoginActivity:android.autofillservice.cts.activities.LoginActivity:"

    iput-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNoBackActListStr:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNoHomeActListStr:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNoBackAndHomeActListStr:Ljava/lang/String;

    new-instance v1, Lcom/miui/home/recents/RecentsReceiver;

    invoke-direct {v1}, Lcom/miui/home/recents/RecentsReceiver;-><init>()V

    iput-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mRecentsReceiver:Lcom/miui/home/recents/RecentsReceiver;

    new-instance v1, Lcom/miui/home/recents/BaseRecentsImpl$1;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/BaseRecentsImpl$1;-><init>(Lcom/miui/home/recents/BaseRecentsImpl;)V

    iput-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    new-instance v1, Lcom/miui/home/recents/BaseRecentsImpl$5;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v1, p0, v2}, Lcom/miui/home/recents/BaseRecentsImpl$5;-><init>(Lcom/miui/home/recents/BaseRecentsImpl;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mHideGestureLineListener:Landroid/database/ContentObserver;

    new-instance v1, Lcom/miui/home/recents/BaseRecentsImpl$6;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/BaseRecentsImpl$6;-><init>(Lcom/miui/home/recents/BaseRecentsImpl;)V

    iput-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mActivityStateObserver:Lcom/miui/home/recents/ActivityObserverLauncher$ActivityObserverCallback;

    new-instance v1, Lcom/miui/home/recents/BaseRecentsImpl$7;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v1, p0, v2}, Lcom/miui/home/recents/BaseRecentsImpl$7;-><init>(Lcom/miui/home/recents/BaseRecentsImpl;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mForceImmersiveNavBarListener:Landroid/database/ContentObserver;

    new-instance v1, Lcom/miui/home/recents/BaseRecentsImpl$8;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v1, p0, v2}, Lcom/miui/home/recents/BaseRecentsImpl$8;-><init>(Lcom/miui/home/recents/BaseRecentsImpl;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mElderlyModeObserver:Landroid/database/ContentObserver;

    new-instance v1, Lcom/miui/home/recents/BaseRecentsImpl$9;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v1, p0, v2}, Lcom/miui/home/recents/BaseRecentsImpl$9;-><init>(Lcom/miui/home/recents/BaseRecentsImpl;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mAppSwitchAnimChangeListener:Landroid/database/ContentObserver;

    new-instance v1, Lcom/miui/home/recents/BaseRecentsImpl$10;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/BaseRecentsImpl$10;-><init>(Lcom/miui/home/recents/BaseRecentsImpl;)V

    iput-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/miui/home/recents/BaseRecentsImpl$11;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/BaseRecentsImpl$11;-><init>(Lcom/miui/home/recents/BaseRecentsImpl;)V

    iput-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mFsgReceiver:Landroid/content/BroadcastReceiver;

    iput-boolean v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mIsStatusBarExpansion:Z

    new-instance v1, Lcom/miui/home/recents/BaseRecentsImpl$12;

    iget-object v2, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/miui/home/recents/BaseRecentsImpl$12;-><init>(Lcom/miui/home/recents/BaseRecentsImpl;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mCloudDataObserver:Landroid/database/ContentObserver;

    new-instance v1, Lcom/miui/home/recents/BaseRecentsImpl$13;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/BaseRecentsImpl$13;-><init>(Lcom/miui/home/recents/BaseRecentsImpl;)V

    iput-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mReadCloudRunnable:Ljava/lang/Runnable;

    iput v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mSystemUiFlags:I

    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    iput-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mLastConfiguration:Landroid/content/res/Configuration;

    iput-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mWindowManager:Landroid/view/WindowManager;

    const-string v1, "keyguard"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    iput-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mKM:Landroid/app/KeyguardManager;

    new-instance v1, Lcom/miui/home/recents/BaseRecentsImpl$H;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/miui/home/recents/BaseRecentsImpl$H;-><init>(Lcom/miui/home/recents/BaseRecentsImpl;Lcom/miui/home/recents/BaseRecentsImpl$1;)V

    iput-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->addFsgGestureWindow()V

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "com.android.systemui.taskmanager.Clear"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mRecentsReceiver:Lcom/miui/home/recents/RecentsReceiver;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v1, Lcom/miui/home/recents/ThumbnailBlurManager;

    iget-object v3, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, v3, v4}, Lcom/miui/home/recents/ThumbnailBlurManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mThumbnailBlurManager:Lcom/miui/home/recents/ThumbnailBlurManager;

    invoke-static {p1}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->getTaskStackViewLayoutStyle(Landroid/content/Context;)I

    move-result v1

    invoke-direct {p0, v1, p1}, Lcom/miui/home/recents/BaseRecentsImpl;->setTaskStackViewLayoutStyle(ILandroid/content/Context;)V

    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->registerCloudDataObserver()V

    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->registerScreeningModeObserver()V

    invoke-direct {p0, p1}, Lcom/miui/home/recents/BaseRecentsImpl;->initHideGestureLine(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->registerSuperSavePowerObserver()V

    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->registerRecentsLayoutStyleObserver()V

    invoke-static {}, Lcom/miui/home/smallwindow/SmallWindowStateHelper;->getInstance()Lcom/miui/home/smallwindow/SmallWindowStateHelper;

    move-result-object p1

    iget-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/miui/home/smallwindow/SmallWindowStateHelper;->init(Landroid/content/Context;)V

    invoke-static {}, Lcom/miui/home/smallwindow/SmallWindowStateHelper;->getInstance()Lcom/miui/home/smallwindow/SmallWindowStateHelper;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/miui/home/smallwindow/SmallWindowStateHelper;->addCallback(Lcom/miui/home/smallwindow/SmallWindowStateHelper$SmallWindowStateCallback;)V

    invoke-static {}, Lcom/android/systemui/shared/recents/AppObserver;->getInstance()Lcom/android/systemui/shared/recents/AppObserver;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/systemui/shared/recents/AppObserver;->addForegroundInfoListener(Lcom/android/systemui/shared/recents/AppObserver$ForegroundListener;)V

    iget-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-static {p1, v1, v2}, Lcom/miui/home/launcher/common/Utilities;->registerDisplayListener(Landroid/content/Context;Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    invoke-direct {p0, v0}, Lcom/miui/home/recents/BaseRecentsImpl;->updateDisplayCount(Z)V

    iget-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Lcom/miui/home/recents/UserSetupCompleteHelper;->regisUserSetupComplete(Landroid/os/Handler;)V

    invoke-static {}, Lcom/miui/home/recents/UserSetupCompleteHelper;->updateUserSetupComplete()V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/home/recents/BaseRecentsImpl;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/recents/BaseRecentsImpl;->updateDisplayCount(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/miui/home/recents/BaseRecentsImpl;)Lcom/miui/home/recents/GestureStubView;
    .locals 0

    iget-object p0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mGestureStubRight:Lcom/miui/home/recents/GestureStubView;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/miui/home/recents/BaseRecentsImpl;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mHasNavigationBar:Z

    return p0
.end method

.method static synthetic access$1200(Lcom/miui/home/recents/BaseRecentsImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->createAndAddNavStubView()V

    return-void
.end method

.method static synthetic access$1300(Lcom/miui/home/recents/BaseRecentsImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->addBackStubWindow()V

    return-void
.end method

.method static synthetic access$1400(Lcom/miui/home/recents/BaseRecentsImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->removeNavStubView()V

    return-void
.end method

.method static synthetic access$1500(Lcom/miui/home/recents/BaseRecentsImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->clearBackStubWindow()V

    return-void
.end method

.method static synthetic access$1600(Lcom/miui/home/recents/BaseRecentsImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->readCloudDataForFsg()V

    return-void
.end method

.method static synthetic access$1700(Lcom/miui/home/recents/BaseRecentsImpl;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNoBackActListStr:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1784(Lcom/miui/home/recents/BaseRecentsImpl;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNoBackActListStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNoBackActListStr:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1802(Lcom/miui/home/recents/BaseRecentsImpl;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNoHomeActListStr:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1902(Lcom/miui/home/recents/BaseRecentsImpl;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNoBackAndHomeActListStr:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1984(Lcom/miui/home/recents/BaseRecentsImpl;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNoBackAndHomeActListStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNoBackAndHomeActListStr:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/miui/home/recents/BaseRecentsImpl;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/miui/home/recents/BaseRecentsImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->showBackStubWindow()V

    return-void
.end method

.method static synthetic access$2100(Lcom/miui/home/recents/BaseRecentsImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->hideBackStubWindow()V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/home/recents/BaseRecentsImpl;ILandroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/BaseRecentsImpl;->setTaskStackViewLayoutStyle(ILandroid/content/Context;)V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/home/recents/BaseRecentsImpl;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mIsChangedScreeningPkgLockState:Z

    return p0
.end method

.method static synthetic access$402(Lcom/miui/home/recents/BaseRecentsImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mIsChangedScreeningPkgLockState:Z

    return p1
.end method

.method static synthetic access$500(Lcom/miui/home/recents/BaseRecentsImpl;)Lcom/miui/home/recents/NavStubView;
    .locals 0

    iget-object p0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/miui/home/recents/BaseRecentsImpl;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mIsInAnotherPro:Z

    return p0
.end method

.method static synthetic access$602(Lcom/miui/home/recents/BaseRecentsImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mIsInAnotherPro:Z

    return p1
.end method

.method static synthetic access$700(Lcom/miui/home/recents/BaseRecentsImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->updateFsgWindowState()V

    return-void
.end method

.method static synthetic access$800(Lcom/miui/home/recents/BaseRecentsImpl;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/recents/BaseRecentsImpl;->setFSGNavBar(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/miui/home/recents/BaseRecentsImpl;)Lcom/miui/home/recents/GestureStubView;
    .locals 0

    iget-object p0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mGestureStubLeft:Lcom/miui/home/recents/GestureStubView;

    return-object p0
.end method

.method private addBackStubWindow()V
    .locals 2

    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->BACKGROUND_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

    new-instance v1, Lcom/miui/home/recents/-$$Lambda$BaseRecentsImpl$BPMAKls1ZV13eX_cJRCzMrE3i2Y;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/-$$Lambda$BaseRecentsImpl$BPMAKls1ZV13eX_cJRCzMrE3i2Y;-><init>(Lcom/miui/home/recents/BaseRecentsImpl;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private addFsgGestureWindow()V
    .locals 11

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isHasNavigationBar()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mHasNavigationBar:Z

    iget-boolean v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mHasNavigationBar:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "systemui_fsg_version"

    const/16 v2, 0xa

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "force_fsg_nav_bar"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mForceImmersiveNavBarListener:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hide_gesture_line"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mHideGestureLineListener:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "show_gesture_appswitch_feature"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mAppSwitchAnimChangeListener:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "elderly_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mElderlyModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mReceiver:Landroid/content/BroadcastReceiver;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v4, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "com.android.systemui.fsgesture"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mFsgReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {}, Lcom/miui/launcher/utils/LauncherUtils;->getAllUserHandle()Landroid/os/UserHandle;

    move-result-object v7

    const-string v9, "miui.permission.USE_INTERNAL_GENERAL_API"

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Lcom/miui/launcher/utils/LauncherUtils;->registerReceiverAsUser(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)V

    invoke-static {}, Lcom/miui/home/recents/ActivityObserverLauncherImpl;->getInstance()Lcom/miui/home/recents/ActivityObserverLauncherImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mActivityStateObserver:Lcom/miui/home/recents/ActivityObserverLauncher$ActivityObserverCallback;

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/ActivityObserverLauncherImpl;->addCallback(Lcom/miui/home/recents/ActivityObserverLauncher$ActivityObserverCallback;)V

    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->readCloudDataForFsg()V

    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "force_fsg_nav_bar"

    invoke-static {v0, v1}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getGlobalBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mIsFsgNavBar:Z

    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hide_gesture_line"

    invoke-static {v0, v1}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getGlobalBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mHideGestureLine:Z

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/launcher/utils/LauncherUtils;->getUserId(Landroid/os/UserHandle;)I

    move-result v0

    invoke-static {}, Lcom/miui/launcher/utils/LauncherUtils;->getCurrentUserId()I

    move-result v1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    iput-boolean v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mIsInAnotherPro:Z

    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->getDefaultHomePackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mIsUseMiuiHomeAsDefaultHome:Z

    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/home/recents/OverviewComponentObserver;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/OverviewComponentObserver;

    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->updateUseLauncherRecentsAndFsGesture()V

    iget-boolean v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mIsFsgNavBar:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mIsInAnotherPro:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mIsUseMiuiHomeAsDefaultHome:Z

    if-eqz v0, :cond_2

    const-string v0, "RecentsImpl"

    const-string v1, "navstubview will be added: addFsgGestureWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->createAndAddNavStubView()V

    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->showBackStubWindow()V

    :cond_2
    return-void
.end method

.method private clearBackStubWindow()V
    .locals 2

    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->BACKGROUND_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

    new-instance v1, Lcom/miui/home/recents/-$$Lambda$BaseRecentsImpl$S_RssoHM_3zagd0VcQMokHJJY2k;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/-$$Lambda$BaseRecentsImpl$S_RssoHM_3zagd0VcQMokHJJY2k;-><init>(Lcom/miui/home/recents/BaseRecentsImpl;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private createAndAddNavStubView()V
    .locals 2

    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->GESTURE_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

    new-instance v1, Lcom/miui/home/recents/-$$Lambda$BaseRecentsImpl$1RvvhMqIxH7JvrCDl5d6k65AU7o;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/-$$Lambda$BaseRecentsImpl$1RvvhMqIxH7JvrCDl5d6k65AU7o;-><init>(Lcom/miui/home/recents/BaseRecentsImpl;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private getTopActivity()Landroid/content/ComponentName;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/home/recents/BaseRecentsImpl;->getTopActivity(Z)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method private getTopActivity(Z)Landroid/content/ComponentName;
    .locals 4

    invoke-static {}, Lcom/miui/home/recents/ActivityObserverLauncherImpl;->getInstance()Lcom/miui/home/recents/ActivityObserverLauncherImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/ActivityObserverLauncherImpl;->getTopActivity()Landroid/content/ComponentName;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mForegroundPackageName:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    or-int/2addr p1, v2

    iget v2, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mDisplayCount:I

    const/4 v3, 0x0

    if-ne v2, v1, :cond_1

    invoke-static {}, Lcom/miui/home/smallwindow/SmallWindowStateHelper;->getInstance()Lcom/miui/home/smallwindow/SmallWindowStateHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/smallwindow/SmallWindowStateHelper;->isInSmallWindowMode()Z

    move-result v1

    if-nez v1, :cond_1

    if-nez p1, :cond_1

    const-string p1, "RecentsImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTopActivity from observer.   cn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    move-object v0, v3

    :goto_1
    if-nez v0, :cond_3

    iget-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/miui/home/recents/RecentsModel;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/RecentsModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/RecentsModel;->getTaskInfoIgnoreFreeform()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p1

    if-nez p1, :cond_2

    return-object v3

    :cond_2
    iget-object v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    const-string p1, "RecentsImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTopActivity from AMS.   cn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-object v0
.end method

.method private hideBackStubWindow()V
    .locals 2

    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->BACKGROUND_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

    new-instance v1, Lcom/miui/home/recents/-$$Lambda$BaseRecentsImpl$vv4VYvgRQEJI_GSSudDioSiyM9U;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/-$$Lambda$BaseRecentsImpl$vv4VYvgRQEJI_GSSudDioSiyM9U;-><init>(Lcom/miui/home/recents/BaseRecentsImpl;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private hideNavStubView()V
    .locals 2

    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->GESTURE_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

    new-instance v1, Lcom/miui/home/recents/-$$Lambda$BaseRecentsImpl$tu8iKwZxnd1Z4-O37sYk9p6F6kk;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/-$$Lambda$BaseRecentsImpl$tu8iKwZxnd1Z4-O37sYk9p6F6kk;-><init>(Lcom/miui/home/recents/BaseRecentsImpl;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private initGestureStub()V
    .locals 2

    new-instance v0, Lcom/miui/home/recents/GestureStubView;

    iget-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/miui/home/recents/GestureStubView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mGestureStubLeft:Lcom/miui/home/recents/GestureStubView;

    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mGestureStubLeft:Lcom/miui/home/recents/GestureStubView;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/miui/home/recents/BaseRecentsImpl;->setDefaultProperty(Lcom/miui/home/recents/GestureStubView;I)V

    new-instance v0, Lcom/miui/home/recents/GestureStubView;

    iget-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/miui/home/recents/GestureStubView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mGestureStubRight:Lcom/miui/home/recents/GestureStubView;

    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mGestureStubRight:Lcom/miui/home/recents/GestureStubView;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/miui/home/recents/BaseRecentsImpl;->setDefaultProperty(Lcom/miui/home/recents/GestureStubView;I)V

    invoke-virtual {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->adaptToTopActivity()V

    return-void
.end method

.method private initHideGestureLine(Landroid/content/Context;)V
    .locals 3

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hide_gesture_line"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "hide_gesture_line"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method

.method private isAllowUpdateFsgStateFromKeyguard(Ljava/lang/String;)Z
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "com.mfashiongallery.emag.morning.MorningGreetActivity:com.android.deskclock.activity.AlarmAlertFullScreenActivity"

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/2addr p1, v1

    return p1
.end method

.method private isCloudProviderExist()Z
    .locals 2

    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/launcher/utils/MiuiSettingsUtils;->URI_CLOUD_ALL_DATA_NOTIFY:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isForeLauncherWithMultiWindowMode()Z
    .locals 2

    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->hasBeenResumed()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isUseLauncherRecentsAndFsGesture()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mIsUseMiuiHomeAsDefaultHome:Z

    return v0
.end method

.method public static synthetic lambda$addBackStubWindow$7(Lcom/miui/home/recents/BaseRecentsImpl;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mGestureStubLeft:Lcom/miui/home/recents/GestureStubView;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->initGestureStub()V

    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mGestureStubLeft:Lcom/miui/home/recents/GestureStubView;

    invoke-virtual {v0}, Lcom/miui/home/recents/GestureStubView;->showGestureStub()V

    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mGestureStubRight:Lcom/miui/home/recents/GestureStubView;

    invoke-virtual {v0}, Lcom/miui/home/recents/GestureStubView;->showGestureStub()V

    return-void
.end method

.method public static synthetic lambda$clearBackStubWindow$8(Lcom/miui/home/recents/BaseRecentsImpl;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mGestureStubLeft:Lcom/miui/home/recents/GestureStubView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mGestureStubLeft:Lcom/miui/home/recents/GestureStubView;

    invoke-virtual {v0}, Lcom/miui/home/recents/GestureStubView;->clearGestureStub()V

    iput-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mGestureStubLeft:Lcom/miui/home/recents/GestureStubView;

    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mGestureStubRight:Lcom/miui/home/recents/GestureStubView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mGestureStubRight:Lcom/miui/home/recents/GestureStubView;

    invoke-virtual {v0}, Lcom/miui/home/recents/GestureStubView;->clearGestureStub()V

    iput-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mGestureStubRight:Lcom/miui/home/recents/GestureStubView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic lambda$createAndAddNavStubView$3(Lcom/miui/home/recents/BaseRecentsImpl;)V
    .locals 4

    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    if-nez v0, :cond_1

    const-string v0, "RecentsImpl"

    const-string v1, "createAndAddNavStubView"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/miui/home/recents/NavStubView;

    iget-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/miui/home/recents/NavStubView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    iget v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mSystemUiFlags:I

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/NavStubView;->onSystemUiFlagsChanged(I)V

    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/NavStubView;->setLauncher(Lcom/miui/home/launcher/Launcher;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    iget-boolean v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mHideGestureLine:Z

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/NavStubView;->setHideGestureLine(Z)V

    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    iget-object v2, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    iget-object v3, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {v3}, Lcom/miui/home/recents/NavStubView;->getHotSpaceHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/miui/home/recents/NavStubView;->getWindowParam(I)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method public static synthetic lambda$disableBackStubWindow$13(Lcom/miui/home/recents/BaseRecentsImpl;Z)V
    .locals 3

    const-string v0, "RecentsImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disableBackStubWindow    disableTouch="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mGestureStubLeft:Lcom/miui/home/recents/GestureStubView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/miui/home/recents/GestureStubView;->disableTouch(Z)V

    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mGestureStubRight:Lcom/miui/home/recents/GestureStubView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/miui/home/recents/GestureStubView;->disableTouch(Z)V

    :cond_1
    return-void
.end method

.method public static synthetic lambda$disableTouchBySwipeStatusBar$12(Lcom/miui/home/recents/BaseRecentsImpl;Z)V
    .locals 3

    const-string v0, "RecentsImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disableTouchBySwipeStatusBar    disable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mGestureStubLeft:Lcom/miui/home/recents/GestureStubView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/miui/home/recents/GestureStubView;->disableTouchBySwipeStatusBar(Z)V

    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mGestureStubRight:Lcom/miui/home/recents/GestureStubView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/miui/home/recents/GestureStubView;->disableTouchBySwipeStatusBar(Z)V

    :cond_1
    return-void
.end method

.method public static synthetic lambda$hideBackStubWindow$11(Lcom/miui/home/recents/BaseRecentsImpl;)V
    .locals 2

    const-string v0, "RecentsImpl"

    const-string v1, "hideBackStubWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mGestureStubLeft:Lcom/miui/home/recents/GestureStubView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/recents/GestureStubView;->hideGestureStubDelay()V

    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mGestureStubRight:Lcom/miui/home/recents/GestureStubView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/home/recents/GestureStubView;->hideGestureStubDelay()V

    :cond_1
    return-void
.end method

.method public static synthetic lambda$hideNavStubView$6(Lcom/miui/home/recents/BaseRecentsImpl;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    if-eqz v0, :cond_0

    const-string v0, "RecentsImpl"

    const-string v1, "hideNavStubView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/NavStubView;->setKeepHidden(Z)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$onSystemUiFlagsChanged$14(Lcom/miui/home/recents/BaseRecentsImpl;I)V
    .locals 1

    iput p1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mSystemUiFlags:I

    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {v0, p1}, Lcom/miui/home/recents/NavStubView;->onSystemUiFlagsChanged(I)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$registerCloudDataObserver$1(Lcom/miui/home/recents/BaseRecentsImpl;Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1

    :try_start_0
    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->isCloudProviderExist()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const-string p1, "RecentsImpl"

    const-string v0, "isCloudProviderExist error"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic lambda$registerCloudDataObserver$2(Lcom/miui/home/recents/BaseRecentsImpl;Ljava/lang/Boolean;)V
    .locals 3

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v0, Lcom/miui/launcher/utils/MiuiSettingsUtils;->URI_CLOUD_ALL_DATA_NOTIFY:Landroid/net/Uri;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mCloudDataObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "RecentsImpl"

    const-string v0, "registerContentObserver error"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public static synthetic lambda$removeNavStubView$4(Lcom/miui/home/recents/BaseRecentsImpl;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    if-eqz v0, :cond_0

    const-string v0, "RecentsImpl"

    const-string v1, "removeNavStubView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    :cond_0
    return-void
.end method

.method public static synthetic lambda$requestApplyInsetsOfNavStubView$15(Lcom/miui/home/recents/BaseRecentsImpl;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {v0}, Lcom/miui/home/recents/NavStubView;->requestApplyInsets()V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$showBackStubWindow$10(Lcom/miui/home/recents/BaseRecentsImpl;Z)V
    .locals 3

    const-string v0, "RecentsImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showBackStubWindow  hasNavigationBar="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "force_fsg_nav_bar"

    invoke-static {p1, v0}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getGlobalBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result p1

    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mGestureStubLeft:Lcom/miui/home/recents/GestureStubView;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->initGestureStub()V

    :cond_0
    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mGestureStubLeft:Lcom/miui/home/recents/GestureStubView;

    invoke-virtual {p1}, Lcom/miui/home/recents/GestureStubView;->showGestureStub()V

    iget-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mGestureStubRight:Lcom/miui/home/recents/GestureStubView;

    invoke-virtual {p1}, Lcom/miui/home/recents/GestureStubView;->showGestureStub()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->hideBackStubWindow()V

    :cond_2
    :goto_0
    return-void
.end method

.method public static synthetic lambda$showNavStubView$5(Lcom/miui/home/recents/BaseRecentsImpl;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    if-eqz v0, :cond_0

    const-string v0, "RecentsImpl"

    const-string v1, "showNavStubView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/NavStubView;->setKeepHidden(Z)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$updateDisplayCount$0(Lcom/miui/home/recents/BaseRecentsImpl;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->getDisplayCount(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mDisplayCount:I

    return-void
.end method

.method public static synthetic lambda$updateFsgWindowVisibilityState$9(Lcom/miui/home/recents/BaseRecentsImpl;ZLjava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "force_fsg_nav_bar"

    invoke-static {v0, v1}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getGlobalBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    const-string v1, "RecentsImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateFsgWindowVisibilityState   isEnter="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "   typeFrom="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "   isOpen="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "   mIsInAnotherPro="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mIsInAnotherPro:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "   mIsStatusBarExpansion="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mIsStatusBarExpansion:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    if-eqz v1, :cond_7

    iget-boolean v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mIsInAnotherPro:Z

    if-nez v1, :cond_7

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const-string v0, "typefrom_home"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mIsStatusBarExpansion:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/BaseRecentsImpl;->updateStatusBarExpansion(ZLjava/lang/String;)V

    if-eqz p1, :cond_3

    const/4 p1, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "typefrom_ai_voice_assist"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p1, 0x5

    goto :goto_0

    :sswitch_1
    const-string v0, "typefrom_home"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p1, 0x7

    goto :goto_0

    :sswitch_2
    const-string v0, "typefrom_demo"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    :sswitch_3
    const-string v0, "typefrom_partial_screenshot"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p1, 0x6

    goto :goto_0

    :sswitch_4
    const-string v0, "typefrom_status_bar_expansion"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p1, 0x4

    goto :goto_0

    :sswitch_5
    const-string v0, "typefrom_provision"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p1, 0x3

    goto :goto_0

    :sswitch_6
    const-string v0, "typefrom_landscape_overview"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p1, 0x2

    goto :goto_0

    :sswitch_7
    const-string v0, "typefrom_keyguard"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p1, 0x1

    :cond_2
    :goto_0
    packed-switch p1, :pswitch_data_0

    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->showNavStubView()V

    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->showBackStubWindow()V

    goto :goto_1

    :pswitch_0
    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->hideBackStubWindow()V

    goto :goto_1

    :pswitch_1
    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->showBackStubWindow()V

    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->hideNavStubView()V

    goto :goto_1

    :pswitch_2
    iget-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mKM:Landroid/app/KeyguardManager;

    invoke-virtual {p1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result p1

    if-nez p1, :cond_6

    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->hideNavStubView()V

    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->showBackStubWindow()V

    goto :goto_1

    :pswitch_3
    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->hideNavStubView()V

    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->hideBackStubWindow()V

    goto :goto_1

    :cond_3
    const-string p1, "typefrom_keyguard"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mKM:Landroid/app/KeyguardManager;

    invoke-virtual {p1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mLastResumedClassName:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/miui/home/recents/BaseRecentsImpl;->isAllowUpdateFsgStateFromKeyguard(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->showNavStubView()V

    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->showBackStubWindow()V

    goto :goto_1

    :cond_4
    const-string p1, "typefrom_home"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->getTopActivity()Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_6

    const-string p2, "com.miui.home.launcher.Launcher:com.miui.personalassistant.fake.FakeStartActivity:com.miui.personalassistant.fake.FakeEndActivity"

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->showNavStubView()V

    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->hideBackStubWindow()V

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->adaptToTopActivity()V

    :cond_6
    :goto_1
    return-void

    :cond_7
    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x3d22c45f -> :sswitch_7
        -0x3a19d748 -> :sswitch_6
        -0x3376ffc6 -> :sswitch_5
        0x18abd181 -> :sswitch_4
        0x1f23e11f -> :sswitch_3
        0x4025cb5e -> :sswitch_2
        0x4027c25a -> :sswitch_1
        0x5dc52872 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private readCloudDataForFsg()V
    .locals 2

    invoke-static {}, Lcom/miui/home/launcher/common/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mReadCloudRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/miui/home/launcher/common/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mReadCloudRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private registerCloudDataObserver()V
    .locals 3

    new-instance v0, Lcom/miui/home/recents/-$$Lambda$BaseRecentsImpl$qQ122bYJKwZ_c2bNs5BwXjmnBC0;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/-$$Lambda$BaseRecentsImpl$qQ122bYJKwZ_c2bNs5BwXjmnBC0;-><init>(Lcom/miui/home/recents/BaseRecentsImpl;)V

    new-instance v1, Lcom/miui/home/recents/-$$Lambda$BaseRecentsImpl$Fqar-iXBhz4_g5W9DqTBgvB97Bk;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/-$$Lambda$BaseRecentsImpl$Fqar-iXBhz4_g5W9DqTBgvB97Bk;-><init>(Lcom/miui/home/recents/BaseRecentsImpl;)V

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method

.method private registerRecentsLayoutStyleObserver()V
    .locals 4

    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mLayoutStyleObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/home/recents/BaseRecentsImpl$2;

    iget-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/miui/home/recents/BaseRecentsImpl$2;-><init>(Lcom/miui/home/recents/BaseRecentsImpl;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mLayoutStyleObserver:Landroid/database/ContentObserver;

    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "task_stack_view_layout_style"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mLayoutStyleObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method private registerScreeningModeObserver()V
    .locals 4

    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mCastModeObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/home/recents/BaseRecentsImpl$4;

    iget-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/miui/home/recents/BaseRecentsImpl$4;-><init>(Lcom/miui/home/recents/BaseRecentsImpl;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mCastModeObserver:Landroid/database/ContentObserver;

    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "cast_mode"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mCastModeObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mCastModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v3}, Landroid/database/ContentObserver;->onChange(Z)V

    return-void
.end method

.method private registerSuperSavePowerObserver()V
    .locals 4

    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mSuperSavePowerObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/home/recents/BaseRecentsImpl$3;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/miui/home/recents/BaseRecentsImpl$3;-><init>(Lcom/miui/home/recents/BaseRecentsImpl;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mSuperSavePowerObserver:Landroid/database/ContentObserver;

    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "power_supersave_mode_open"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mSuperSavePowerObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mSuperSavePowerObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v3}, Landroid/database/ContentObserver;->onChange(Z)V

    return-void
.end method

.method private removeNavStubView()V
    .locals 2

    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->GESTURE_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

    new-instance v1, Lcom/miui/home/recents/-$$Lambda$BaseRecentsImpl$P5_EnukM2h3jR86GHVO-Q4-C1SQ;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/-$$Lambda$BaseRecentsImpl$P5_EnukM2h3jR86GHVO-Q4-C1SQ;-><init>(Lcom/miui/home/recents/BaseRecentsImpl;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private setDefaultProperty(Lcom/miui/home/recents/GestureStubView;I)V
    .locals 3

    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "show_gesture_appswitch_feature"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v2, v1

    :cond_0
    xor-int/lit8 v0, v2, 0x1

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/GestureStubView;->disableQuickSwitch(Z)V

    invoke-virtual {p1, v1}, Lcom/miui/home/recents/GestureStubView;->enableGestureBackAnimation(Z)V

    invoke-virtual {p1, p2}, Lcom/miui/home/recents/GestureStubView;->setGestureStubPosition(I)V

    invoke-virtual {p1}, Lcom/miui/home/recents/GestureStubView;->adaptAndRender()V

    return-void
.end method

.method private setFSGNavBar(Z)V
    .locals 3

    const-string v0, "RecentsImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFSGNavBar, force_fsg_nav_bar="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "force_fsg_nav_bar"

    invoke-static {v0, v1, p1}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->putBooleanToGlobal(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    return-void
.end method

.method private setTaskStackViewLayoutStyle(ILandroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mTaskStackViewLayoutStyle:Lcom/miui/home/recents/TaskStackViewLayoutStyle;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/recents/TaskStackViewLayoutStyle;->getStyleValue()I

    move-result v0

    if-eq p1, v0, :cond_1

    :cond_0
    invoke-static {p1, p2}, Lcom/miui/home/recents/TaskStackViewLayoutStyle;->create(ILandroid/content/Context;)Lcom/miui/home/recents/TaskStackViewLayoutStyle;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mTaskStackViewLayoutStyle:Lcom/miui/home/recents/TaskStackViewLayoutStyle;

    const-string p1, "RecentsImpl"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "TaskStackViewLayoutStyle change to "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mTaskStackViewLayoutStyle:Lcom/miui/home/recents/TaskStackViewLayoutStyle;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance p2, Lcom/miui/home/recents/messages/TaskStackViewLayoutStyleChangeEvent;

    invoke-direct {p2}, Lcom/miui/home/recents/messages/TaskStackViewLayoutStyleChangeEvent;-><init>()V

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private showBackStubWindow()V
    .locals 3

    iget-boolean v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mHasNavigationBar:Z

    sget-object v1, Lcom/miui/home/recents/TouchInteractionService;->BACKGROUND_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

    new-instance v2, Lcom/miui/home/recents/-$$Lambda$BaseRecentsImpl$9HzYdY0JaPS7UqbPraLJibB2gTk;

    invoke-direct {v2, p0, v0}, Lcom/miui/home/recents/-$$Lambda$BaseRecentsImpl$9HzYdY0JaPS7UqbPraLJibB2gTk;-><init>(Lcom/miui/home/recents/BaseRecentsImpl;Z)V

    invoke-virtual {v1, v2}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private showNavStubView()V
    .locals 2

    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->GESTURE_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

    new-instance v1, Lcom/miui/home/recents/-$$Lambda$BaseRecentsImpl$QnQ7-QPfWKfZUD07C16s80ECXBg;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/-$$Lambda$BaseRecentsImpl$QnQ7-QPfWKfZUD07C16s80ECXBg;-><init>(Lcom/miui/home/recents/BaseRecentsImpl;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private updateDisplayCount(Z)V
    .locals 0

    if-eqz p1, :cond_0

    new-instance p1, Lcom/miui/home/recents/-$$Lambda$BaseRecentsImpl$JJ3QOlfqlqzQDRPpUgChar9ZCqI;

    invoke-direct {p1, p0}, Lcom/miui/home/recents/-$$Lambda$BaseRecentsImpl$JJ3QOlfqlqzQDRPpUgChar9ZCqI;-><init>(Lcom/miui/home/recents/BaseRecentsImpl;)V

    invoke-static {p1}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->getDisplayCount(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mDisplayCount:I

    :goto_0
    return-void
.end method

.method private updateFsgWindowState()V
    .locals 4

    iget-boolean v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mHasNavigationBar:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "force_fsg_nav_bar"

    invoke-static {v0, v1}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getGlobalBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    iget-boolean v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mIsFsgNavBar:Z

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/settings/BaseSettingsSearchProvider;->sendBroadcastForUpdateSearchResult(Landroid/content/Context;)V

    iput-boolean v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mIsFsgNavBar:Z

    :cond_1
    const-string v1, "RecentsImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateFsgWindowState  isOpen="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "  mIsUseMiuiHomeAsDefaultHome="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mIsUseMiuiHomeAsDefaultHome:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mIsUseMiuiHomeAsDefaultHome:Z

    if-eqz v0, :cond_3

    :try_start_0
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    if-nez v0, :cond_2

    const-string v0, "RecentsImpl"

    const-string v1, "navstubview will be added: updateFsgWindowState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->createAndAddNavStubView()V

    :cond_2
    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->addBackStubWindow()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_3
    :try_start_1
    const-string v0, "RecentsImpl"

    const-string v1, "navstubview will be removed: updateFsgWindowState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->removeNavStubView()V

    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->clearBackStubWindow()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private updateStatusBarExpansion(ZLjava/lang/String;)V
    .locals 1

    const-string v0, "typefrom_status_bar_expansion"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iput-boolean p1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mIsStatusBarExpansion:Z

    :cond_0
    return-void
.end method

.method private updateUseLauncherRecentsAndFsGesture()V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->isUseLauncherRecentsAndFsGesture()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/DeviceConfig;->setUseLauncherRecentsAndFsGesture(Landroid/content/Context;Z)V

    return-void
.end method


# virtual methods
.method public adaptToTopActivity()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/BaseRecentsImpl;->adaptToTopActivity(Z)V

    return-void
.end method

.method public adaptToTopActivity(Z)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/miui/home/recents/BaseRecentsImpl;->getTopActivity(Z)Landroid/content/ComponentName;

    move-result-object p1

    const-string v0, "RecentsImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adaptToTopActivity   cn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/BaseRecentsImpl;->onResumed(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public disableBackStubWindow(Z)V
    .locals 2

    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->BACKGROUND_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

    new-instance v1, Lcom/miui/home/recents/-$$Lambda$BaseRecentsImpl$xGNtgk26GzSKBDJYPY0OwCLz7vc;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/recents/-$$Lambda$BaseRecentsImpl$xGNtgk26GzSKBDJYPY0OwCLz7vc;-><init>(Lcom/miui/home/recents/BaseRecentsImpl;Z)V

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public disableTouchBySwipeStatusBar(Z)V
    .locals 2

    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->BACKGROUND_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

    new-instance v1, Lcom/miui/home/recents/-$$Lambda$BaseRecentsImpl$7FE1p63DDYQzG6GZ50uFnyA4Kwo;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/recents/-$$Lambda$BaseRecentsImpl$7FE1p63DDYQzG6GZ50uFnyA4Kwo;-><init>(Lcom/miui/home/recents/BaseRecentsImpl;Z)V

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getNavStubView()Lcom/miui/home/recents/NavStubView;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    return-object v0
.end method

.method public getSystemUiStateFlags()I
    .locals 1

    iget v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mSystemUiFlags:I

    return v0
.end method

.method public getTaskStackViewLayoutStyle()Lcom/miui/home/recents/TaskStackViewLayoutStyle;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mTaskStackViewLayoutStyle:Lcom/miui/home/recents/TaskStackViewLayoutStyle;

    return-object v0
.end method

.method public isTaskStackViewLayoutStyleVertical()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mTaskStackViewLayoutStyle:Lcom/miui/home/recents/TaskStackViewLayoutStyle;

    invoke-virtual {v0}, Lcom/miui/home/recents/TaskStackViewLayoutStyle;->getStyleValue()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public modifyTransformVisible(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/recents/views/TaskViewTransform;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {v0, p1}, Lcom/miui/home/recents/NavStubView;->modifyTransformVisible(Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mLastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result p1

    const/high16 v0, -0x80000000

    and-int/2addr v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    if-nez v0, :cond_2

    if-eqz v1, :cond_4

    :cond_2
    iget-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/miui/home/recents/RecentsModel;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/RecentsModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/RecentsModel;->getTaskLoader()Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

    move-result-object p1

    if-eqz p1, :cond_4

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->onThemeChanged()V

    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->onLanguageChange()V

    :cond_4
    return-void
.end method

.method public onEnterOrExitSmallWindow(Z)V
    .locals 0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/BaseRecentsImpl;->adaptToTopActivity(Z)V

    iget-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/miui/home/recents/RecentsModel;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/RecentsModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/RecentsModel;->onTaskStackChangedBackground()V

    return-void
.end method

.method public onForegroundChanged(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mForegroundPackageName:Ljava/lang/String;

    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/BaseRecentsImpl;->adaptToTopActivity(Z)V

    iget-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {p1}, Lcom/miui/home/recents/NavStubView;->resetHomeStackBound()V

    :cond_0
    return-void
.end method

.method public onResumed(Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mKM:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->isForeLauncherWithMultiWindowMode()Z

    move-result v1

    const-string v2, "RecentsImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onResumed className="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "   mIsInAnotherPro="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mIsInAnotherPro:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "   isKeyguardLocked="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mLastResumedClassName:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    if-eqz v2, :cond_9

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mIsInAnotherPro:Z

    if-eqz v0, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mLocalCtrlActs:[Ljava/lang/String;

    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v0, v4

    invoke-static {v5, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    return-void

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    const-string v0, "com.miui.home.launcher.Launcher:com.miui.personalassistant.fake.FakeStartActivity:com.miui.personalassistant.fake.FakeEndActivity"

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p0, v3}, Lcom/miui/home/recents/BaseRecentsImpl;->disableTouchBySwipeStatusBar(Z)V

    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNoBackActListStr:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->hideBackStubWindow()V

    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->showNavStubView()V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNoHomeActListStr:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->hideNavStubView()V

    invoke-virtual {p0, v3}, Lcom/miui/home/recents/BaseRecentsImpl;->disableBackStubWindow(Z)V

    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->showBackStubWindow()V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNoBackAndHomeActListStr:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->hideNavStubView()V

    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->hideBackStubWindow()V

    goto :goto_1

    :cond_6
    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->showNavStubView()V

    invoke-virtual {p0, v3}, Lcom/miui/home/recents/BaseRecentsImpl;->disableBackStubWindow(Z)V

    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->showBackStubWindow()V

    :goto_1
    return-void

    :cond_7
    :goto_2
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->notifyBackGestureStatus()V

    goto :goto_3

    :cond_8
    const-string p1, "RecentsImpl"

    const-string v0, "get Launcher is null"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-void

    :cond_9
    :goto_4
    return-void
.end method

.method public onSystemUiFlagsChanged(I)V
    .locals 2

    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->GESTURE_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

    new-instance v1, Lcom/miui/home/recents/-$$Lambda$BaseRecentsImpl$dA7ngS0QEGDaYJ_U9ibiFJ13U6I;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/recents/-$$Lambda$BaseRecentsImpl$dA7ngS0QEGDaYJ_U9ibiFJ13U6I;-><init>(Lcom/miui/home/recents/BaseRecentsImpl;I)V

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public requestApplyInsetsOfNavStubView()V
    .locals 2

    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->GESTURE_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

    new-instance v1, Lcom/miui/home/recents/-$$Lambda$BaseRecentsImpl$0lBx2xOfwJbydi21jeFJpIxEIjQ;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/-$$Lambda$BaseRecentsImpl$0lBx2xOfwJbydi21jeFJpIxEIjQ;-><init>(Lcom/miui/home/recents/BaseRecentsImpl;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setIsUseMiuiHomeAsDefaultHome(Z)V
    .locals 3

    const-string v0, "RecentsImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setIsUseMiuiHomeAsDefaultHome    isUseMiuiHomeAsDefaultHome="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "   mIsUseMiuiHomeAsDefaultHome="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mIsUseMiuiHomeAsDefaultHome:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mIsUseMiuiHomeAsDefaultHome:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mIsUseMiuiHomeAsDefaultHome:Z

    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->updateUseLauncherRecentsAndFsGesture()V

    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->updateFsgWindowState()V

    :cond_0
    return-void
.end method

.method public setLauncher(Lcom/miui/home/launcher/Launcher;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {v0, p1}, Lcom/miui/home/recents/NavStubView;->setLauncher(Lcom/miui/home/launcher/Launcher;)V

    :cond_0
    return-void
.end method

.method public updateFsgWindowVisibilityState(ZLjava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/miui/home/recents/-$$Lambda$BaseRecentsImpl$6-6KCOWpkRB3L19TXPCCrMB_cfM;

    invoke-direct {v0, p0, p1, p2}, Lcom/miui/home/recents/-$$Lambda$BaseRecentsImpl$6-6KCOWpkRB3L19TXPCCrMB_cfM;-><init>(Lcom/miui/home/recents/BaseRecentsImpl;ZLjava/lang/String;)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method
