.class Lmiui/home/lib/dialog/AlertController$AlertParams$2;
.super Landroid/widget/CursorAdapter;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/home/lib/dialog/AlertController$AlertParams;->createListView(Lmiui/home/lib/dialog/AlertController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mIsCheckedIndex:I

.field private final mLabelIndex:I

.field final synthetic this$0:Lmiui/home/lib/dialog/AlertController$AlertParams;

.field final synthetic val$dialog:Lmiui/home/lib/dialog/AlertController;

.field final synthetic val$listView:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Lmiui/home/lib/dialog/AlertController$AlertParams;Landroid/content/Context;Landroid/database/Cursor;ZLandroid/widget/ListView;Lmiui/home/lib/dialog/AlertController;)V
    .locals 0

    iput-object p1, p0, Lmiui/home/lib/dialog/AlertController$AlertParams$2;->this$0:Lmiui/home/lib/dialog/AlertController$AlertParams;

    iput-object p5, p0, Lmiui/home/lib/dialog/AlertController$AlertParams$2;->val$listView:Landroid/widget/ListView;

    iput-object p6, p0, Lmiui/home/lib/dialog/AlertController$AlertParams$2;->val$dialog:Lmiui/home/lib/dialog/AlertController;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    invoke-virtual {p0}, Lmiui/home/lib/dialog/AlertController$AlertParams$2;->getCursor()Landroid/database/Cursor;

    move-result-object p1

    iget-object p2, p0, Lmiui/home/lib/dialog/AlertController$AlertParams$2;->this$0:Lmiui/home/lib/dialog/AlertController$AlertParams;

    iget-object p2, p2, Lmiui/home/lib/dialog/AlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lmiui/home/lib/dialog/AlertController$AlertParams$2;->mLabelIndex:I

    iget-object p2, p0, Lmiui/home/lib/dialog/AlertController$AlertParams$2;->this$0:Lmiui/home/lib/dialog/AlertController$AlertParams;

    iget-object p2, p2, Lmiui/home/lib/dialog/AlertController$AlertParams;->mIsCheckedColumn:Ljava/lang/String;

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lmiui/home/lib/dialog/AlertController$AlertParams$2;->mIsCheckedIndex:I

    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 2

    const p2, 0x1020014

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckedTextView;

    iget p2, p0, Lmiui/home/lib/dialog/AlertController$AlertParams$2;->mLabelIndex:I

    invoke-interface {p3, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lmiui/home/lib/dialog/AlertController$AlertParams$2;->val$listView:Landroid/widget/ListView;

    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    iget v1, p0, Lmiui/home/lib/dialog/AlertController$AlertParams$2;->mIsCheckedIndex:I

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result p3

    const/4 v1, 0x1

    if-ne p3, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p2, v0, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    invoke-static {p1}, Lmiuix/appcompat/internal/util/EasyModeHelper;->updateTextViewSize(Landroid/widget/TextView;)V

    return-void
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    iget-object p1, p0, Lmiui/home/lib/dialog/AlertController$AlertParams$2;->this$0:Lmiui/home/lib/dialog/AlertController$AlertParams;

    iget-object p1, p1, Lmiui/home/lib/dialog/AlertController$AlertParams;->mInflater:Landroid/view/LayoutInflater;

    iget-object p2, p0, Lmiui/home/lib/dialog/AlertController$AlertParams$2;->val$dialog:Lmiui/home/lib/dialog/AlertController;

    iget p2, p2, Lmiui/home/lib/dialog/AlertController;->mMultiChoiceItemLayout:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lmiuix/internal/util/AnimHelper;->addPressAnim(Landroid/view/View;)V

    invoke-static {p1, v0}, Lmiuix/view/CompatViewMethod;->setForceDarkAllowed(Landroid/view/View;Z)V

    return-object p1
.end method
