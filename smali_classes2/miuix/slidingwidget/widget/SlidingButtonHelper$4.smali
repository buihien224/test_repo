.class Lmiuix/slidingwidget/widget/SlidingButtonHelper$4;
.super Lmiuix/animation/property/FloatProperty;
.source "SlidingButtonHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/slidingwidget/widget/SlidingButtonHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiuix/animation/property/FloatProperty<",
        "Landroid/widget/CompoundButton;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/slidingwidget/widget/SlidingButtonHelper;


# direct methods
.method constructor <init>(Lmiuix/slidingwidget/widget/SlidingButtonHelper;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper$4;->this$0:Lmiuix/slidingwidget/widget/SlidingButtonHelper;

    invoke-direct {p0, p2}, Lmiuix/animation/property/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getValue(Landroid/widget/CompoundButton;)F
    .locals 0

    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper$4;->this$0:Lmiuix/slidingwidget/widget/SlidingButtonHelper;

    invoke-static {p1}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->access$200(Lmiuix/slidingwidget/widget/SlidingButtonHelper;)F

    move-result p1

    return p1
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)F
    .locals 0

    check-cast p1, Landroid/widget/CompoundButton;

    invoke-virtual {p0, p1}, Lmiuix/slidingwidget/widget/SlidingButtonHelper$4;->getValue(Landroid/widget/CompoundButton;)F

    move-result p1

    return p1
.end method

.method public setValue(Landroid/widget/CompoundButton;F)V
    .locals 0

    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper$4;->this$0:Lmiuix/slidingwidget/widget/SlidingButtonHelper;

    invoke-static {p1, p2}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->access$202(Lmiuix/slidingwidget/widget/SlidingButtonHelper;F)F

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    check-cast p1, Landroid/widget/CompoundButton;

    invoke-virtual {p0, p1, p2}, Lmiuix/slidingwidget/widget/SlidingButtonHelper$4;->setValue(Landroid/widget/CompoundButton;F)V

    return-void
.end method