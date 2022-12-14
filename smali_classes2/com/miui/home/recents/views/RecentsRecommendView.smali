.class public Lcom/miui/home/recents/views/RecentsRecommendView;
.super Landroid/widget/LinearLayout;
.source "RecentsRecommendView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static ACTION_APP_MANAGER:Ljava/lang/String; = "miui.intent.action.APP_MANAGER"

.field private static ACTION_GARBAGE_CLEANUP:Ljava/lang/String; = "miui.intent.action.GARBAGE_CLEANUP"

.field private static ACTION_GARBAGE_DEEPCLEAN:Ljava/lang/String; = "miui.intent.action.GARBAGE_DEEPCLEAN"

.field private static ACTION_SECURITY_SACN:Ljava/lang/String; = "miui.intent.action.ANTI_VIRUS"

.field private static DATA_MARKET_REF:Ljava/lang/String; = "recents"

.field private static EXTRA_ENTER_HOMEPAGE_WAY:Ljava/lang/String; = "enter_homepage_way"

.field private static EXTRA_ENTER_WAY:Ljava/lang/String; = "enter_way"

.field private static EXTRA_VALUE_CHANNEL:Ljava/lang/String; = "recent_task"

.field private static GLOBAL_GAME_PACKAGE_NAME:Ljava/lang/String; = "com.xiaomi.glgm"

.field private static GLOBAL_MARKET_PACKAGE_NAME:Ljava/lang/String; = "com.xiaomi.mipicks"

.field private static TAG:Ljava/lang/String; = "RecentsRecommendView"


# instance fields
.field mAppsChangedCallback:Lcom/miui/home/library/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;

.field private mFirstItem:Landroid/widget/LinearLayout;

.field private mFourthItem:Landroid/widget/LinearLayout;

.field private mIsGamesEnable:Z

.field private mIsMarketEnabled:Z

.field private mSecondItem:Landroid/widget/LinearLayout;

.field private mThirdItem:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/home/recents/views/RecentsRecommendView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/recents/views/RecentsRecommendView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/miui/home/recents/views/RecentsRecommendView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance p1, Lcom/miui/home/recents/views/RecentsRecommendView$1;

    invoke-direct {p1, p0}, Lcom/miui/home/recents/views/RecentsRecommendView$1;-><init>(Lcom/miui/home/recents/views/RecentsRecommendView;)V

    iput-object p1, p0, Lcom/miui/home/recents/views/RecentsRecommendView;->mAppsChangedCallback:Lcom/miui/home/library/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;

    return-void
.end method

.method private initItem(III)Landroid/widget/LinearLayout;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/RecentsRecommendView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const v0, 0x7f0a01c6

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsRecommendView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const p2, 0x7f0a01cd

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsRecommendView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/library/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/LauncherAppsCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/views/RecentsRecommendView;->mAppsChangedCallback:Lcom/miui/home/library/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;

    invoke-virtual {v0, v1}, Lcom/miui/home/library/compat/LauncherAppsCompat;->addOnAppsChangedCallback(Lcom/miui/home/library/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v1, 0x7f0a015b

    if-eq p1, v1, :cond_5

    const v1, 0x7f0a0171

    if-eq p1, v1, :cond_3

    const v1, 0x7f0a02f9

    if-eq p1, v1, :cond_2

    const v1, 0x7f0a0383

    if-eq p1, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-boolean p1, p0, Lcom/miui/home/recents/views/RecentsRecommendView;->mIsMarketEnabled:Z

    if-eqz p1, :cond_1

    const-string p1, "android.intent.action.VIEW"

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mimarket://home?ref="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/miui/home/recents/views/RecentsRecommendView;->DATA_MARKET_REF:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string p1, "market"

    invoke-static {p1}, Lcom/miui/home/launcher/AnalyticalDataCollectorForRecents;->sendClickRecommendCardEvent(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/miui/home/recents/views/RecentsRecommendView;->ACTION_GARBAGE_DEEPCLEAN:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    sget-object p1, Lcom/miui/home/recents/views/RecentsRecommendView;->EXTRA_ENTER_HOMEPAGE_WAY:Ljava/lang/String;

    sget-object v1, Lcom/miui/home/recents/views/RecentsRecommendView;->EXTRA_VALUE_CHANNEL:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "deep_clean"

    invoke-static {p1}, Lcom/miui/home/launcher/AnalyticalDataCollectorForRecents;->sendClickRecommendCardEvent(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/miui/home/recents/views/RecentsRecommendView;->ACTION_SECURITY_SACN:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    sget-object p1, Lcom/miui/home/recents/views/RecentsRecommendView;->EXTRA_ENTER_HOMEPAGE_WAY:Ljava/lang/String;

    sget-object v1, Lcom/miui/home/recents/views/RecentsRecommendView;->EXTRA_VALUE_CHANNEL:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "scan"

    invoke-static {p1}, Lcom/miui/home/launcher/AnalyticalDataCollectorForRecents;->sendClickRecommendCardEvent(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-boolean p1, p0, Lcom/miui/home/recents/views/RecentsRecommendView;->mIsGamesEnable:Z

    if-eqz p1, :cond_4

    new-instance p1, Landroid/content/ComponentName;

    const-string v1, "com.xiaomi.glgm"

    const-string v2, "com.xiaomi.glgm.home.ui.SplashActivity"

    invoke-direct {p1, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string p1, "game"

    invoke-static {p1}, Lcom/miui/home/launcher/AnalyticalDataCollectorForRecents;->sendClickRecommendCardEvent(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    sget-object p1, Lcom/miui/home/recents/views/RecentsRecommendView;->ACTION_APP_MANAGER:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    sget-object p1, Lcom/miui/home/recents/views/RecentsRecommendView;->EXTRA_ENTER_WAY:Ljava/lang/String;

    sget-object v1, Lcom/miui/home/recents/views/RecentsRecommendView;->EXTRA_VALUE_CHANNEL:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "manager_app"

    invoke-static {p1}, Lcom/miui/home/launcher/AnalyticalDataCollectorForRecents;->sendClickRecommendCardEvent(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    sget-object p1, Lcom/miui/home/recents/views/RecentsRecommendView;->ACTION_GARBAGE_CLEANUP:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    sget-object p1, Lcom/miui/home/recents/views/RecentsRecommendView;->EXTRA_ENTER_HOMEPAGE_WAY:Ljava/lang/String;

    sget-object v1, Lcom/miui/home/recents/views/RecentsRecommendView;->EXTRA_VALUE_CHANNEL:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "cleaner"

    invoke-static {p1}, Lcom/miui/home/launcher/AnalyticalDataCollectorForRecents;->sendClickRecommendCardEvent(Ljava/lang/String;)V

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsRecommendView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/app/TaskStackBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/app/TaskStackBuilder;->addNextIntentWithParentStack(Landroid/content/Intent;)Landroid/app/TaskStackBuilder;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/TaskStackBuilder;->startActivities(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    sget-object v0, Lcom/miui/home/recents/views/RecentsRecommendView;->TAG:Ljava/lang/String;

    const-string v1, "start activity error."

    invoke-static {v0, v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsRecommendView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/library/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/LauncherAppsCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/views/RecentsRecommendView;->mAppsChangedCallback:Lcom/miui/home/library/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;

    invoke-virtual {v0, v1}, Lcom/miui/home/library/compat/LauncherAppsCompat;->removeOnAppsChangedCallback(Lcom/miui/home/library/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 5

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsRecommendView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/miui/home/recents/views/RecentsRecommendView;->GLOBAL_MARKET_PACKAGE_NAME:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/home/recents/util/Utilities;->isPackageEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/home/recents/views/RecentsRecommendView;->mIsMarketEnabled:Z

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsRecommendView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/miui/home/recents/views/RecentsRecommendView;->GLOBAL_GAME_PACKAGE_NAME:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/home/recents/util/Utilities;->isPackageEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/home/recents/views/RecentsRecommendView;->mIsGamesEnable:Z

    const v0, 0x7f0a015b

    const v1, 0x7f08064f

    const v2, 0x7f1103e5

    invoke-direct {p0, v0, v1, v2}, Lcom/miui/home/recents/views/RecentsRecommendView;->initItem(III)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/views/RecentsRecommendView;->mFirstItem:Landroid/widget/LinearLayout;

    const v0, 0x7f0a02f9

    const v1, 0x7f080652

    const v2, 0x7f1103e8

    invoke-direct {p0, v0, v1, v2}, Lcom/miui/home/recents/views/RecentsRecommendView;->initItem(III)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/views/RecentsRecommendView;->mSecondItem:Landroid/widget/LinearLayout;

    iget-boolean v0, p0, Lcom/miui/home/recents/views/RecentsRecommendView;->mIsMarketEnabled:Z

    if-eqz v0, :cond_0

    const v0, 0x7f080651

    goto :goto_0

    :cond_0
    const v0, 0x7f080650

    :goto_0
    iget-boolean v1, p0, Lcom/miui/home/recents/views/RecentsRecommendView;->mIsMarketEnabled:Z

    if-eqz v1, :cond_1

    const v1, 0x7f1103e7

    goto :goto_1

    :cond_1
    const v1, 0x7f1103e6

    :goto_1
    const v2, 0x7f0a0383

    invoke-direct {p0, v2, v0, v1}, Lcom/miui/home/recents/views/RecentsRecommendView;->initItem(III)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/views/RecentsRecommendView;->mThirdItem:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0171

    iget-boolean v1, p0, Lcom/miui/home/recents/views/RecentsRecommendView;->mIsGamesEnable:Z

    if-eqz v1, :cond_2

    const v1, 0x7f08064e

    goto :goto_2

    :cond_2
    const v1, 0x7f08064d

    :goto_2
    iget-boolean v2, p0, Lcom/miui/home/recents/views/RecentsRecommendView;->mIsGamesEnable:Z

    if-eqz v2, :cond_3

    const v2, 0x7f1103e4

    goto :goto_3

    :cond_3
    const v2, 0x7f1103e3

    :goto_3
    invoke-direct {p0, v0, v1, v2}, Lcom/miui/home/recents/views/RecentsRecommendView;->initItem(III)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/views/RecentsRecommendView;->mFourthItem:Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/miui/home/launcher/folme/FolmeUtils;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    new-array v1, v0, [Landroid/view/View;

    iget-object v2, p0, Lcom/miui/home/recents/views/RecentsRecommendView;->mFirstItem:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v1

    invoke-interface {v1}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/recents/views/RecentsRecommendView;->mFirstItem:Landroid/widget/LinearLayout;

    new-array v4, v3, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {v1, v2, v4}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    new-array v1, v0, [Landroid/view/View;

    iget-object v2, p0, Lcom/miui/home/recents/views/RecentsRecommendView;->mSecondItem:Landroid/widget/LinearLayout;

    aput-object v2, v1, v3

    invoke-static {v1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v1

    invoke-interface {v1}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/recents/views/RecentsRecommendView;->mSecondItem:Landroid/widget/LinearLayout;

    new-array v4, v3, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {v1, v2, v4}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    new-array v1, v0, [Landroid/view/View;

    iget-object v2, p0, Lcom/miui/home/recents/views/RecentsRecommendView;->mThirdItem:Landroid/widget/LinearLayout;

    aput-object v2, v1, v3

    invoke-static {v1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v1

    invoke-interface {v1}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/recents/views/RecentsRecommendView;->mThirdItem:Landroid/widget/LinearLayout;

    new-array v4, v3, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {v1, v2, v4}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    new-array v0, v0, [Landroid/view/View;

    iget-object v1, p0, Lcom/miui/home/recents/views/RecentsRecommendView;->mFourthItem:Landroid/widget/LinearLayout;

    aput-object v1, v0, v3

    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/views/RecentsRecommendView;->mFourthItem:Landroid/widget/LinearLayout;

    new-array v2, v3, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {v0, v1, v2}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    :cond_4
    return-void
.end method

.method public setAllItemClickable(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsRecommendView;->mFirstItem:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsRecommendView;->mSecondItem:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    :cond_1
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsRecommendView;->mThirdItem:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    :cond_2
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsRecommendView;->mFourthItem:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    :cond_3
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsRecommendView;->mFirstItem:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsRecommendView;->mSecondItem:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsRecommendView;->mThirdItem:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsRecommendView;->mFourthItem:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    return-void
.end method

.method public updateItemWhenPackageChanged(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/miui/home/recents/views/RecentsRecommendView;->GLOBAL_MARKET_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsRecommendView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/miui/home/recents/views/RecentsRecommendView;->GLOBAL_MARKET_PACKAGE_NAME:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/home/recents/util/Utilities;->isPackageEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    iget-boolean v1, p0, Lcom/miui/home/recents/views/RecentsRecommendView;->mIsMarketEnabled:Z

    if-eq v1, v0, :cond_2

    iput-boolean v0, p0, Lcom/miui/home/recents/views/RecentsRecommendView;->mIsMarketEnabled:Z

    const v0, 0x7f0a0383

    iget-boolean v1, p0, Lcom/miui/home/recents/views/RecentsRecommendView;->mIsMarketEnabled:Z

    if-eqz v1, :cond_0

    const v1, 0x7f080651

    goto :goto_0

    :cond_0
    const v1, 0x7f080650

    :goto_0
    iget-boolean v2, p0, Lcom/miui/home/recents/views/RecentsRecommendView;->mIsMarketEnabled:Z

    if-eqz v2, :cond_1

    const v2, 0x7f1103e7

    goto :goto_1

    :cond_1
    const v2, 0x7f1103e6

    :goto_1
    invoke-direct {p0, v0, v1, v2}, Lcom/miui/home/recents/views/RecentsRecommendView;->initItem(III)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/views/RecentsRecommendView;->mThirdItem:Landroid/widget/LinearLayout;

    :cond_2
    sget-object v0, Lcom/miui/home/recents/views/RecentsRecommendView;->GLOBAL_GAME_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsRecommendView;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lcom/miui/home/recents/views/RecentsRecommendView;->GLOBAL_GAME_PACKAGE_NAME:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/miui/home/recents/util/Utilities;->isPackageEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    iget-boolean v0, p0, Lcom/miui/home/recents/views/RecentsRecommendView;->mIsGamesEnable:Z

    if-eq v0, p1, :cond_5

    iput-boolean p1, p0, Lcom/miui/home/recents/views/RecentsRecommendView;->mIsGamesEnable:Z

    const p1, 0x7f0a0171

    iget-boolean v0, p0, Lcom/miui/home/recents/views/RecentsRecommendView;->mIsGamesEnable:Z

    if-eqz v0, :cond_3

    const v0, 0x7f08064e

    goto :goto_2

    :cond_3
    const v0, 0x7f08064d

    :goto_2
    iget-boolean v1, p0, Lcom/miui/home/recents/views/RecentsRecommendView;->mIsGamesEnable:Z

    if-eqz v1, :cond_4

    const v1, 0x7f1103e4

    goto :goto_3

    :cond_4
    const v1, 0x7f1103e3

    :goto_3
    invoke-direct {p0, p1, v0, v1}, Lcom/miui/home/recents/views/RecentsRecommendView;->initItem(III)Landroid/widget/LinearLayout;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/recents/views/RecentsRecommendView;->mFourthItem:Landroid/widget/LinearLayout;

    :cond_5
    return-void
.end method
