.class public final synthetic Lcom/miui/home/recents/-$$Lambda$NavStubView$r8F_aHAXblSo_xHr5Eq6ETaUDaE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/recents/NavStubView;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/NavStubView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$r8F_aHAXblSo_xHr5Eq6ETaUDaE;->f$0:Lcom/miui/home/recents/NavStubView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$r8F_aHAXblSo_xHr5Eq6ETaUDaE;->f$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0}, Lcom/miui/home/recents/NavStubView;->lambda$onSystemUiFlagsChanged$9(Lcom/miui/home/recents/NavStubView;)V

    return-void
.end method