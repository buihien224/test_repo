.class Lcom/miui/home/settings/MiuiHomeSettings$12;
.super Ljava/lang/Object;
.source "MiuiHomeSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/settings/MiuiHomeSettings;->showDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/settings/MiuiHomeSettings;


# direct methods
.method constructor <init>(Lcom/miui/home/settings/MiuiHomeSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings$12;->this$0:Lcom/miui/home/settings/MiuiHomeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings$12;->this$0:Lcom/miui/home/settings/MiuiHomeSettings;

    iget-object p1, p1, Lcom/miui/home/settings/MiuiHomeSettings;->mOpenPersonalAssistant:Lcom/miui/home/settings/preference/CheckBoxPreference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/home/settings/preference/CheckBoxPreference;->setSelectable(Z)V

    return-void
.end method
