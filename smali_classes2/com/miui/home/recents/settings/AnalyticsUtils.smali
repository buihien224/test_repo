.class public Lcom/miui/home/recents/settings/AnalyticsUtils;
.super Ljava/lang/Object;
.source "AnalyticsUtils.java"


# direct methods
.method public static trackClickLearnBtnEvent()V
    .locals 1

    const-string v0, "click_learn_button"

    invoke-static {v0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;)V

    return-void
.end method

.method public static trackClickSingleTurorialEvent(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "tutorial_type"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "fullscreen_settings_state"

    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackShowLearnGesturesDialogEvent()V
    .locals 1

    const-string v0, "show_learn_gestures_popup_window"

    invoke-static {v0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;)V

    return-void
.end method
