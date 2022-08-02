.class public Lcom/miui/home/recents/messages/ShowTaskMenuEvent;
.super Ljava/lang/Object;
.source "ShowTaskMenuEvent.java"


# instance fields
.field private final mRelativePosition:Lcom/miui/home/recents/util/RelativePosition;

.field public final taskView:Lcom/miui/home/recents/views/TaskView;


# direct methods
.method public constructor <init>(Lcom/miui/home/recents/views/TaskView;Lcom/miui/home/recents/util/RelativePosition;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/messages/ShowTaskMenuEvent;->taskView:Lcom/miui/home/recents/views/TaskView;

    iput-object p2, p0, Lcom/miui/home/recents/messages/ShowTaskMenuEvent;->mRelativePosition:Lcom/miui/home/recents/util/RelativePosition;

    return-void
.end method


# virtual methods
.method public getRelativePosition()Lcom/miui/home/recents/util/RelativePosition;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/recents/messages/ShowTaskMenuEvent;->mRelativePosition:Lcom/miui/home/recents/util/RelativePosition;

    return-object v0
.end method
