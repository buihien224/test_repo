.class public Lcom/miui/home/settings/preference/DesktopModePreference;
.super Landroidx/preference/Preference;
.source "DesktopModePreference.java"

# interfaces
.implements Lmiuix/visual/check/VisualCheckGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/settings/preference/DesktopModePreference$OnDesktopModeTemporaryChangeListener;
    }
.end annotation


# instance fields
.field private mDesktop:Lmiuix/visual/check/VisualCheckBox;

.field private mDrawer:Lmiuix/visual/check/VisualCheckBox;

.field private mDrawerModeView:Lcom/miui/home/settings/FixedAspectRatioLottieAnimView;

.field private mEndIsDrawer:Z

.field private mOnDesktopModeTemporaryChangeListener:Lcom/miui/home/settings/preference/DesktopModePreference$OnDesktopModeTemporaryChangeListener;

.field private mStartIsDrawer:Z

.field private mVisualCheckGroup:Lmiuix/visual/check/VisualCheckGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p1, 0x7f0d0062

    invoke-virtual {p0, p1}, Lcom/miui/home/settings/preference/DesktopModePreference;->setLayoutResource(I)V

    return-void
.end method

.method private setChecked(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/settings/preference/DesktopModePreference;->mDrawer:Lmiuix/visual/check/VisualCheckBox;

    invoke-virtual {v0, p1}, Lmiuix/visual/check/VisualCheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/home/settings/preference/DesktopModePreference;->mDesktop:Lmiuix/visual/check/VisualCheckBox;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Lmiuix/visual/check/VisualCheckBox;->setChecked(Z)V

    return-void
.end method

.method private setDrawerAnimation()V
    .locals 2

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreen()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "drawer_mode_animation.json"

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isScreenOrientationLandscape()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "drawer_mode_animation_fold_land.json"

    goto :goto_0

    :cond_1
    const-string v0, "drawer_mode_animation_fold_large.json"

    :goto_0
    iget-object v1, p0, Lcom/miui/home/settings/preference/DesktopModePreference;->mDrawerModeView:Lcom/miui/home/settings/FixedAspectRatioLottieAnimView;

    invoke-virtual {v1, v0}, Lcom/miui/home/settings/FixedAspectRatioLottieAnimView;->setAnimation(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/home/settings/preference/DesktopModePreference;->mDrawerModeView:Lcom/miui/home/settings/FixedAspectRatioLottieAnimView;

    invoke-virtual {v0}, Lcom/miui/home/settings/FixedAspectRatioLottieAnimView;->playAnimation()V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    iget-object v0, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lmiuix/visual/check/VisualCheckGroup;

    iput-object v0, p0, Lcom/miui/home/settings/preference/DesktopModePreference;->mVisualCheckGroup:Lmiuix/visual/check/VisualCheckGroup;

    const v0, 0x7f0a0102

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/visual/check/VisualCheckBox;

    iput-object v0, p0, Lcom/miui/home/settings/preference/DesktopModePreference;->mDesktop:Lmiuix/visual/check/VisualCheckBox;

    const v0, 0x7f0a0121

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/visual/check/VisualCheckBox;

    iput-object v0, p0, Lcom/miui/home/settings/preference/DesktopModePreference;->mDrawer:Lmiuix/visual/check/VisualCheckBox;

    iget-boolean v0, p0, Lcom/miui/home/settings/preference/DesktopModePreference;->mEndIsDrawer:Z

    invoke-direct {p0, v0}, Lcom/miui/home/settings/preference/DesktopModePreference;->setChecked(Z)V

    const v0, 0x7f0a0123

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/miui/home/settings/FixedAspectRatioLottieAnimView;

    iput-object p1, p0, Lcom/miui/home/settings/preference/DesktopModePreference;->mDrawerModeView:Lcom/miui/home/settings/FixedAspectRatioLottieAnimView;

    invoke-direct {p0}, Lcom/miui/home/settings/preference/DesktopModePreference;->setDrawerAnimation()V

    iget-object p1, p0, Lcom/miui/home/settings/preference/DesktopModePreference;->mVisualCheckGroup:Lmiuix/visual/check/VisualCheckGroup;

    invoke-virtual {p1, p0}, Lmiuix/visual/check/VisualCheckGroup;->setOnCheckedChangeListener(Lmiuix/visual/check/VisualCheckGroup$OnCheckedChangeListener;)V

    return-void
.end method

.method public onCheckedChanged(Lmiuix/visual/check/VisualCheckGroup;I)V
    .locals 0

    iget-object p1, p0, Lcom/miui/home/settings/preference/DesktopModePreference;->mDrawer:Lmiuix/visual/check/VisualCheckBox;

    invoke-virtual {p1}, Lmiuix/visual/check/VisualCheckBox;->getId()I

    move-result p1

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/miui/home/settings/preference/DesktopModePreference;->mEndIsDrawer:Z

    iget-object p1, p0, Lcom/miui/home/settings/preference/DesktopModePreference;->mOnDesktopModeTemporaryChangeListener:Lcom/miui/home/settings/preference/DesktopModePreference$OnDesktopModeTemporaryChangeListener;

    if-eqz p1, :cond_1

    iget-boolean p2, p0, Lcom/miui/home/settings/preference/DesktopModePreference;->mEndIsDrawer:Z

    invoke-interface {p1, p2}, Lcom/miui/home/settings/preference/DesktopModePreference$OnDesktopModeTemporaryChangeListener;->OnDesktopModeTemporaryChange(Z)V

    :cond_1
    return-void
.end method

.method public setDesktopMode()V
    .locals 2

    iget-boolean v0, p0, Lcom/miui/home/settings/preference/DesktopModePreference;->mEndIsDrawer:Z

    iget-boolean v1, p0, Lcom/miui/home/settings/preference/DesktopModePreference;->mStartIsDrawer:Z

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/settings/preference/DesktopModePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/home/settings/preference/DesktopModePreference;->mEndIsDrawer:Z

    invoke-static {v0, v1}, Lcom/miui/home/launcher/allapps/LauncherModeController;->setDrawerModeEnable(Landroid/content/Context;Z)V

    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->setHasChangedDrawerMode(Z)V

    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/home/settings/preference/DesktopModePreference;->mEndIsDrawer:Z

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/common/PreferenceUtils;->setDrawerModeEnable(Z)V

    return-void
.end method

.method public setInitValue(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/home/settings/preference/DesktopModePreference;->mEndIsDrawer:Z

    iput-boolean p1, p0, Lcom/miui/home/settings/preference/DesktopModePreference;->mStartIsDrawer:Z

    iget-object p1, p0, Lcom/miui/home/settings/preference/DesktopModePreference;->mDesktop:Lmiuix/visual/check/VisualCheckBox;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/home/settings/preference/DesktopModePreference;->mDrawer:Lmiuix/visual/check/VisualCheckBox;

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/miui/home/settings/preference/DesktopModePreference;->mEndIsDrawer:Z

    invoke-direct {p0, p1}, Lcom/miui/home/settings/preference/DesktopModePreference;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public setOnDesktopModeTemporaryChangeListener(Lcom/miui/home/settings/preference/DesktopModePreference$OnDesktopModeTemporaryChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/settings/preference/DesktopModePreference;->mOnDesktopModeTemporaryChangeListener:Lcom/miui/home/settings/preference/DesktopModePreference$OnDesktopModeTemporaryChangeListener;

    return-void
.end method
