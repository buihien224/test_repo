.class public Lcom/miui/home/recents/messages/TaskViewDismissedEvent;
.super Ljava/lang/Object;
.source "TaskViewDismissedEvent.java"


# instance fields
.field public final animation:Lcom/android/systemui/shared/recents/utilities/AnimationProps;

.field public final task:Lcom/android/systemui/shared/recents/model/Task;

.field public final taskView:Lcom/miui/home/recents/views/TaskView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shared/recents/model/Task;Lcom/miui/home/recents/views/TaskView;Lcom/android/systemui/shared/recents/utilities/AnimationProps;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/messages/TaskViewDismissedEvent;->task:Lcom/android/systemui/shared/recents/model/Task;

    iput-object p2, p0, Lcom/miui/home/recents/messages/TaskViewDismissedEvent;->taskView:Lcom/miui/home/recents/views/TaskView;

    iput-object p3, p0, Lcom/miui/home/recents/messages/TaskViewDismissedEvent;->animation:Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    return-void
.end method
