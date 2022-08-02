.class public Lcom/miui/home/recents/messages/ShowMemoryAndDockEvent;
.super Ljava/lang/Object;
.source "ShowMemoryAndDockEvent.java"


# instance fields
.field private mShowDock:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/miui/home/recents/messages/ShowMemoryAndDockEvent;->mShowDock:Z

    return-void
.end method


# virtual methods
.method public showDock()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/home/recents/messages/ShowMemoryAndDockEvent;->mShowDock:Z

    return v0
.end method
