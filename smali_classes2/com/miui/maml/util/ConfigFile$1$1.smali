.class Lcom/miui/maml/util/ConfigFile$1$1;
.super Ljava/lang/Object;
.source "ConfigFile.java"

# interfaces
.implements Lcom/miui/maml/util/Utils$XmlTraverseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/maml/util/ConfigFile$1;->onChild(Lorg/w3c/dom/Element;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/maml/util/ConfigFile$1;


# direct methods
.method constructor <init>(Lcom/miui/maml/util/ConfigFile$1;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/maml/util/ConfigFile$1$1;->this$1:Lcom/miui/maml/util/ConfigFile$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChild(Lorg/w3c/dom/Element;)V
    .locals 4

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "id"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "StringInput"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/miui/maml/util/ConfigFile$1$1;->this$1:Lcom/miui/maml/util/ConfigFile$1;

    iget-object v0, v0, Lcom/miui/maml/util/ConfigFile$1;->this$0:Lcom/miui/maml/util/ConfigFile;

    const-string v2, "default"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/miui/maml/util/ConfigFile;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_0
    const-string v2, "CheckBox"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/miui/maml/util/ConfigFile$1$1;->this$1:Lcom/miui/maml/util/ConfigFile$1;

    iget-object v0, v0, Lcom/miui/maml/util/ConfigFile$1;->this$0:Lcom/miui/maml/util/ConfigFile;

    const-string v2, "default"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "1"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "1"

    goto :goto_0

    :cond_1
    const-string p1, "0"

    :goto_0
    invoke-virtual {v0, v1, p1}, Lcom/miui/maml/util/ConfigFile;->putNumber(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v2, "NumberInput"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    const-string v0, "default"

    invoke-static {p1, v0, v3}, Lcom/miui/maml/util/Utils;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    move-result p1

    float-to-double v2, p1

    iget-object p1, p0, Lcom/miui/maml/util/ConfigFile$1$1;->this$1:Lcom/miui/maml/util/ConfigFile$1;

    iget-object p1, p1, Lcom/miui/maml/util/ConfigFile$1;->this$0:Lcom/miui/maml/util/ConfigFile;

    invoke-static {v2, v3}, Lcom/miui/maml/util/Utils;->doubleToString(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/miui/maml/util/ConfigFile;->putNumber(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v2, "StringChoice"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v0, p0, Lcom/miui/maml/util/ConfigFile$1$1;->this$1:Lcom/miui/maml/util/ConfigFile$1;

    iget-object v0, v0, Lcom/miui/maml/util/ConfigFile$1;->this$0:Lcom/miui/maml/util/ConfigFile;

    const-string v2, "default"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/miui/maml/util/ConfigFile;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v2, "NumberChoice"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v0, "default"

    invoke-static {p1, v0, v3}, Lcom/miui/maml/util/Utils;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    move-result p1

    float-to-double v2, p1

    iget-object p1, p0, Lcom/miui/maml/util/ConfigFile$1$1;->this$1:Lcom/miui/maml/util/ConfigFile$1;

    iget-object p1, p1, Lcom/miui/maml/util/ConfigFile$1;->this$0:Lcom/miui/maml/util/ConfigFile;

    invoke-static {v2, v3}, Lcom/miui/maml/util/Utils;->doubleToString(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/miui/maml/util/ConfigFile;->putNumber(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const-string v1, "AppPicker"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/miui/maml/util/ConfigFile$1$1;->this$1:Lcom/miui/maml/util/ConfigFile$1;

    iget-object v0, v0, Lcom/miui/maml/util/ConfigFile$1;->this$0:Lcom/miui/maml/util/ConfigFile;

    invoke-static {p1}, Lcom/miui/maml/util/Task;->load(Lorg/w3c/dom/Element;)Lcom/miui/maml/util/Task;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/miui/maml/util/ConfigFile;->putTask(Lcom/miui/maml/util/Task;)V

    :cond_6
    :goto_1
    return-void
.end method
