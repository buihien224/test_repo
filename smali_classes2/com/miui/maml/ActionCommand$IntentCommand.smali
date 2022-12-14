.class Lcom/miui/maml/ActionCommand$IntentCommand;
.super Lcom/miui/maml/ActionCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IntentCommand"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;
    }
.end annotation


# static fields
.field private static final TAG_FALLBACK:Ljava/lang/String; = "Fallback"

.field public static final TAG_NAME:Ljava/lang/String; = "IntentCommand"


# instance fields
.field private mActivityOptionsBundle:Lcom/miui/maml/ActionCommand$ObjVar;

.field private mFallbackTrigger:Lcom/miui/maml/CommandTrigger;

.field private mFlags:I

.field private mIntent:Landroid/content/Intent;

.field private mIntentInfo:Lcom/miui/maml/util/IntentInfo;

.field private mIntentType:Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;

.field private mIntentVar:Lcom/miui/maml/data/IndexedVariable;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/miui/maml/ActionCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;)V

    sget-object v0, Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;->Activity:Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;

    iput-object v0, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntentType:Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;

    new-instance v0, Lcom/miui/maml/util/IntentInfo;

    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$IntentCommand;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Lcom/miui/maml/util/IntentInfo;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/data/Variables;)V

    iput-object v0, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntentInfo:Lcom/miui/maml/util/IntentInfo;

    const-string v0, "broadcast"

    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "type"

    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v0, :cond_3

    const-string v0, "broadcast"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "service"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;->Service:Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;

    iput-object v0, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntentType:Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;

    goto :goto_1

    :cond_1
    const-string v0, "activity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;->Activity:Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;

    iput-object v0, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntentType:Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;

    goto :goto_1

    :cond_2
    const-string v0, "var"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;->Var:Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;

    iput-object v0, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntentType:Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;

    const-string v0, "intentVar"

    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v1, Lcom/miui/maml/data/IndexedVariable;

    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$IntentCommand;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object v1, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntentVar:Lcom/miui/maml/data/IndexedVariable;

    goto :goto_1

    :cond_3
    :goto_0
    sget-object v0, Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;->Broadcast:Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;

    iput-object v0, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntentType:Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;

    :cond_4
    :goto_1
    const-string v0, "flags"

    const/4 v1, -0x1

    invoke-static {p2, v0, v1}, Lcom/miui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mFlags:I

    const-string v0, "activityOption"

    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x0

    goto :goto_2

    :cond_5
    new-instance v1, Lcom/miui/maml/ActionCommand$ObjVar;

    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$IntentCommand;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/miui/maml/ActionCommand$ObjVar;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;)V

    move-object v0, v1

    :goto_2
    iput-object v0, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mActivityOptionsBundle:Lcom/miui/maml/ActionCommand$ObjVar;

    const-string v0, "Fallback"

    invoke-static {p2, v0}, Lcom/miui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p2

    if-eqz p2, :cond_6

    new-instance v0, Lcom/miui/maml/CommandTrigger;

    invoke-direct {v0, p2, p1}, Lcom/miui/maml/CommandTrigger;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/elements/ScreenElement;)V

    iput-object v0, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mFallbackTrigger:Lcom/miui/maml/CommandTrigger;

    :cond_6
    return-void
.end method


# virtual methods
.method protected doPerform()V
    .locals 6

    iget-object v0, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntentInfo:Lcom/miui/maml/util/IntentInfo;

    invoke-virtual {v1, v0}, Lcom/miui/maml/util/IntentInfo;->update(Landroid/content/Intent;)V

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$IntentCommand$IntentType:[I

    iget-object v2, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntentType:Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;

    invoke-virtual {v2}, Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntentVar:Lcom/miui/maml/data/IndexedVariable;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntentVar:Lcom/miui/maml/data/IndexedVariable;

    iget-object v2, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :pswitch_1
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$IntentCommand;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    invoke-static {v1, v2}, Lcom/miui/maml/util/Utils;->startService(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_2

    :pswitch_2
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$IntentCommand;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    invoke-static {v1, v2}, Lcom/miui/maml/util/Utils;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_2

    :pswitch_3
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mActivityOptionsBundle:Lcom/miui/maml/ActionCommand$ObjVar;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mActivityOptionsBundle:Lcom/miui/maml/ActionCommand$ObjVar;

    invoke-virtual {v1}, Lcom/miui/maml/ActionCommand$ObjVar;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$IntentCommand;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    const/high16 v4, 0x10000

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$IntentCommand;->getScreenElement()Lcom/miui/maml/elements/ScreenElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/maml/elements/ScreenElement;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/maml/ScreenElementRoot;->getContextAndRect()Landroid/util/Pair;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    const-string v4, "maml_view_location_on_screen"

    iget-object v5, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Landroid/os/Parcelable;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/content/Context;

    iget-object v3, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    invoke-static {v2, v3, v1}, Lcom/miui/maml/util/Utils;->startActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$IntentCommand;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    invoke-static {v2, v3, v1}, Lcom/miui/maml/util/Utils;->startActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mFallbackTrigger:Lcom/miui/maml/CommandTrigger;

    if-eqz v2, :cond_3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mFallbackTrigger:Lcom/miui/maml/CommandTrigger;

    invoke-virtual {v1}, Lcom/miui/maml/CommandTrigger;->perform()V

    goto :goto_2

    :cond_3
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$IntentCommand;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    invoke-static {v3, v2, v4, v1}, Lcom/miui/maml/util/HideSdkDependencyUtils;->PreloadedAppPolicy_installPreloadedDataApp(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Landroid/os/Bundle;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_5
    return-void

    :catch_0
    move-exception v1

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mFallbackTrigger:Lcom/miui/maml/CommandTrigger;

    if-eqz v0, :cond_6

    const-string v0, "ActionCommand"

    const-string v1, "fail to send Intent, fallback..."

    invoke-static {v0, v1}, Lcom/miui/maml/util/MamlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mFallbackTrigger:Lcom/miui/maml/CommandTrigger;

    invoke-virtual {v0}, Lcom/miui/maml/CommandTrigger;->perform()V

    goto :goto_2

    :cond_6
    const-string v0, "ActionCommand"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public finish()V
    .locals 1

    iget-object v0, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mFallbackTrigger:Lcom/miui/maml/CommandTrigger;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/maml/CommandTrigger;->finish()V

    :cond_0
    return-void
.end method

.method public init()V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$IntentCommand;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntentInfo:Lcom/miui/maml/util/IntentInfo;

    invoke-virtual {v1}, Lcom/miui/maml/util/IntentInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/maml/ScreenElementRoot;->findTask(Ljava/lang/String;)Lcom/miui/maml/util/Task;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/miui/maml/util/Task;->action:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntentInfo:Lcom/miui/maml/util/IntentInfo;

    invoke-virtual {v1, v0}, Lcom/miui/maml/util/IntentInfo;->set(Lcom/miui/maml/util/Task;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntentInfo:Lcom/miui/maml/util/IntentInfo;

    invoke-virtual {v0}, Lcom/miui/maml/util/IntentInfo;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/maml/util/Utils;->isProtectedIntent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntentInfo:Lcom/miui/maml/util/IntentInfo;

    iget-object v1, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/miui/maml/util/IntentInfo;->update(Landroid/content/Intent;)V

    iget v0, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mFlags:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget-object v1, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntentType:Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;

    sget-object v1, Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;->Activity:Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    const/high16 v1, 0x34000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mFallbackTrigger:Lcom/miui/maml/CommandTrigger;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/miui/maml/CommandTrigger;->init()V

    :cond_4
    return-void
.end method

.method public pause()V
    .locals 1

    iget-object v0, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mFallbackTrigger:Lcom/miui/maml/CommandTrigger;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/maml/CommandTrigger;->pause()V

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 1

    iget-object v0, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mFallbackTrigger:Lcom/miui/maml/CommandTrigger;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/maml/CommandTrigger;->resume()V

    :cond_0
    return-void
.end method
