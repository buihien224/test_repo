.class public Lcom/miui/home/recents/settings/TaskStackViewLayoutStylePreferenceFragment;
.super Lmiuix/preference/PreferenceFragment;
.source "TaskStackViewLayoutStylePreferenceFragment.java"


# instance fields
.field private mTaskStackViewLayoutStyle:Lcom/miui/home/recents/settings/TaskStackViewLayoutStyleContainerPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmiuix/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    const p1, 0x7f140035

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/recents/settings/TaskStackViewLayoutStylePreferenceFragment;->setPreferencesFromResource(ILjava/lang/String;)V

    const-string p1, "task_stack_view_layout_style_container_preference"

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/settings/TaskStackViewLayoutStylePreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/miui/home/recents/settings/TaskStackViewLayoutStyleContainerPreference;

    iput-object p1, p0, Lcom/miui/home/recents/settings/TaskStackViewLayoutStylePreferenceFragment;->mTaskStackViewLayoutStyle:Lcom/miui/home/recents/settings/TaskStackViewLayoutStyleContainerPreference;

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lmiuix/preference/PreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/miui/home/recents/settings/TaskStackViewLayoutStylePreferenceFragment;->mTaskStackViewLayoutStyle:Lcom/miui/home/recents/settings/TaskStackViewLayoutStyleContainerPreference;

    invoke-virtual {v0}, Lcom/miui/home/recents/settings/TaskStackViewLayoutStyleContainerPreference;->initCheckedBox()V

    return-void
.end method
