.class public Lcom/miui/home/launcher/util/ViewCompat;
.super Landroidx/core/view/ViewCompat;
.source "ViewCompat.java"


# direct methods
.method public static notifyChildOfDragStart(Landroid/view/View;)V
    .locals 8

    const-class v0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    const-string v2, "notifyChildOfDragStart"

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Landroid/view/View;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    new-array v6, v4, [Ljava/lang/Object;

    aput-object p0, v6, v7

    move-object v4, v5

    move-object v5, v6

    invoke-static/range {v0 .. v5}, Lcom/miui/launcher/utils/ReflectUtils;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
