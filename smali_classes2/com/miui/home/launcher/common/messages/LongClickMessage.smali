.class public Lcom/miui/home/launcher/common/messages/LongClickMessage;
.super Ljava/lang/Object;
.source "LongClickMessage.java"


# instance fields
.field private mRawX:F

.field private mRawY:F

.field private mWho:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/common/messages/LongClickMessage;->mWho:Landroid/view/View;

    iput p2, p0, Lcom/miui/home/launcher/common/messages/LongClickMessage;->mRawX:F

    iput p3, p0, Lcom/miui/home/launcher/common/messages/LongClickMessage;->mRawY:F

    return-void
.end method


# virtual methods
.method public getRawX()F
    .locals 1

    iget v0, p0, Lcom/miui/home/launcher/common/messages/LongClickMessage;->mRawX:F

    return v0
.end method

.method public getRawY()F
    .locals 1

    iget v0, p0, Lcom/miui/home/launcher/common/messages/LongClickMessage;->mRawY:F

    return v0
.end method

.method public getWho()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/common/messages/LongClickMessage;->mWho:Landroid/view/View;

    return-object v0
.end method
