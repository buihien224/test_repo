.class public Lmiuix/pickerwidget/widget/DateTimePicker$LunarFormatter;
.super Lmiuix/pickerwidget/widget/DateTimePicker$DayFormatter;
.source "DateTimePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/pickerwidget/widget/DateTimePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LunarFormatter"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lmiuix/pickerwidget/widget/DateTimePicker$DayFormatter;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public formatDay(III)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lmiuix/pickerwidget/widget/DateTimePicker;->access$100()Ljava/lang/ThreadLocal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/pickerwidget/date/Calendar;

    if-nez v0, :cond_0

    new-instance v0, Lmiuix/pickerwidget/date/Calendar;

    invoke-direct {v0}, Lmiuix/pickerwidget/date/Calendar;-><init>()V

    invoke-static {}, Lmiuix/pickerwidget/widget/DateTimePicker;->access$100()Ljava/lang/ThreadLocal;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lmiuix/pickerwidget/date/Calendar;->set(II)Lmiuix/pickerwidget/date/Calendar;

    const/4 p1, 0x5

    invoke-virtual {v0, p1, p2}, Lmiuix/pickerwidget/date/Calendar;->set(II)Lmiuix/pickerwidget/date/Calendar;

    const/16 p1, 0x9

    invoke-virtual {v0, p1, p3}, Lmiuix/pickerwidget/date/Calendar;->set(II)Lmiuix/pickerwidget/date/Calendar;

    iget-object p1, p0, Lmiuix/pickerwidget/widget/DateTimePicker$LunarFormatter;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lmiuix/pickerwidget/widget/DateTimePicker$LunarFormatter;->mContext:Landroid/content/Context;

    sget p3, Lmiuix/pickerwidget/R$string;->fmt_chinese_date:I

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lmiuix/pickerwidget/date/Calendar;->format(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
