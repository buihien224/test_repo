.class public Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "AsyncTaskWithProgress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/os/AsyncTaskWithProgress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProgressDialogFragment"
.end annotation


# instance fields
.field private mTask:Lmiuix/os/AsyncTaskWithProgress;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiuix/os/AsyncTaskWithProgress<",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;->mTask:Lmiuix/os/AsyncTaskWithProgress;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lmiuix/os/AsyncTaskWithProgress;->access$300(Lmiuix/os/AsyncTaskWithProgress;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;->mTask:Lmiuix/os/AsyncTaskWithProgress;

    invoke-static {v0}, Lmiuix/os/AsyncTaskWithProgress;->access$400(Lmiuix/os/AsyncTaskWithProgress;)Lmiuix/os/AsyncTaskWithProgress$Listeners;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiuix/os/AsyncTaskWithProgress$Listeners;->onCancel(Landroid/content/DialogInterface;)V

    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lmiuix/os/AsyncTaskWithProgress;->access$200()Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p0}, Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "task"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmiuix/os/AsyncTaskWithProgress;

    iput-object p1, p0, Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;->mTask:Lmiuix/os/AsyncTaskWithProgress;

    iget-object p1, p0, Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;->mTask:Lmiuix/os/AsyncTaskWithProgress;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    iget-object v0, p0, Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;->mTask:Lmiuix/os/AsyncTaskWithProgress;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Lmiuix/appcompat/app/ProgressDialog;

    invoke-virtual {p0}, Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;->mTask:Lmiuix/os/AsyncTaskWithProgress;

    invoke-static {v1}, Lmiuix/os/AsyncTaskWithProgress;->access$500(Lmiuix/os/AsyncTaskWithProgress;)I

    move-result v1

    invoke-direct {p1, v0, v1}, Lmiuix/appcompat/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iget-object v0, p0, Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;->mTask:Lmiuix/os/AsyncTaskWithProgress;

    invoke-static {v0}, Lmiuix/os/AsyncTaskWithProgress;->access$600(Lmiuix/os/AsyncTaskWithProgress;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;->mTask:Lmiuix/os/AsyncTaskWithProgress;

    invoke-static {v0}, Lmiuix/os/AsyncTaskWithProgress;->access$600(Lmiuix/os/AsyncTaskWithProgress;)I

    move-result v0

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/ProgressDialog;->setTitle(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;->mTask:Lmiuix/os/AsyncTaskWithProgress;

    invoke-static {v0}, Lmiuix/os/AsyncTaskWithProgress;->access$700(Lmiuix/os/AsyncTaskWithProgress;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;->mTask:Lmiuix/os/AsyncTaskWithProgress;

    invoke-static {v0}, Lmiuix/os/AsyncTaskWithProgress;->access$800(Lmiuix/os/AsyncTaskWithProgress;)I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;->mTask:Lmiuix/os/AsyncTaskWithProgress;

    invoke-static {v1}, Lmiuix/os/AsyncTaskWithProgress;->access$800(Lmiuix/os/AsyncTaskWithProgress;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;->mTask:Lmiuix/os/AsyncTaskWithProgress;

    invoke-static {v0}, Lmiuix/os/AsyncTaskWithProgress;->access$900(Lmiuix/os/AsyncTaskWithProgress;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v0, p0, Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;->mTask:Lmiuix/os/AsyncTaskWithProgress;

    invoke-static {v0}, Lmiuix/os/AsyncTaskWithProgress;->access$1000(Lmiuix/os/AsyncTaskWithProgress;)I

    move-result v0

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/ProgressDialog;->setProgressStyle(I)V

    iget-object v0, p0, Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;->mTask:Lmiuix/os/AsyncTaskWithProgress;

    invoke-static {v0}, Lmiuix/os/AsyncTaskWithProgress;->access$1100(Lmiuix/os/AsyncTaskWithProgress;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;->mTask:Lmiuix/os/AsyncTaskWithProgress;

    invoke-static {v0}, Lmiuix/os/AsyncTaskWithProgress;->access$1100(Lmiuix/os/AsyncTaskWithProgress;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;->mTask:Lmiuix/os/AsyncTaskWithProgress;

    invoke-static {v0}, Lmiuix/os/AsyncTaskWithProgress;->access$1200(Lmiuix/os/AsyncTaskWithProgress;)I

    move-result v0

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/ProgressDialog;->setMax(I)V

    iget-object v0, p0, Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;->mTask:Lmiuix/os/AsyncTaskWithProgress;

    invoke-static {v0}, Lmiuix/os/AsyncTaskWithProgress;->access$1300(Lmiuix/os/AsyncTaskWithProgress;)I

    move-result v0

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/ProgressDialog;->setProgress(I)V

    :cond_3
    iget-object v0, p0, Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;->mTask:Lmiuix/os/AsyncTaskWithProgress;

    invoke-static {v0}, Lmiuix/os/AsyncTaskWithProgress;->access$300(Lmiuix/os/AsyncTaskWithProgress;)Z

    move-result v0

    const/4 v1, -0x2

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lmiuix/appcompat/app/ProgressDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v2, 0x1040000

    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v2, p0, Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;->mTask:Lmiuix/os/AsyncTaskWithProgress;

    invoke-static {v2}, Lmiuix/os/AsyncTaskWithProgress;->access$400(Lmiuix/os/AsyncTaskWithProgress;)Lmiuix/os/AsyncTaskWithProgress$Listeners;

    move-result-object v2

    invoke-virtual {p1, v1, v0, v2}, Lmiuix/appcompat/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/ProgressDialog;->setCancelable(Z)V

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    move-object v2, v0

    check-cast v2, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v1, v0, v2}, Lmiuix/appcompat/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/ProgressDialog;->setCancelable(Z)V

    :goto_2
    return-object p1
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStart()V

    iget-object v0, p0, Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;->mTask:Lmiuix/os/AsyncTaskWithProgress;

    if-eqz v0, :cond_0

    invoke-static {v0, p0}, Lmiuix/os/AsyncTaskWithProgress;->access$102(Lmiuix/os/AsyncTaskWithProgress;Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;)Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    iget-object v0, p0, Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;->mTask:Lmiuix/os/AsyncTaskWithProgress;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiuix/os/AsyncTaskWithProgress;->access$102(Lmiuix/os/AsyncTaskWithProgress;Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;)Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;

    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStop()V

    return-void
.end method
