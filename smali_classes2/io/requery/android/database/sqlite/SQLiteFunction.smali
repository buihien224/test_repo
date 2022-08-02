.class public Lio/requery/android/database/sqlite/SQLiteFunction;
.super Ljava/lang/Object;
.source "SQLiteFunction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/requery/android/database/sqlite/SQLiteFunction$MyResult;,
        Lio/requery/android/database/sqlite/SQLiteFunction$MyArgs;
    }
.end annotation


# instance fields
.field private final args:Lio/requery/android/database/sqlite/SQLiteFunction$MyArgs;

.field public final callback:Lio/requery/android/database/sqlite/SQLiteDatabase$Function;

.field final flags:I

.field public final name:Ljava/lang/String;

.field public final numArgs:I

.field private final result:Lio/requery/android/database/sqlite/SQLiteFunction$MyResult;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILio/requery/android/database/sqlite/SQLiteDatabase$Function;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lio/requery/android/database/sqlite/SQLiteFunction;-><init>(Ljava/lang/String;ILio/requery/android/database/sqlite/SQLiteDatabase$Function;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILio/requery/android/database/sqlite/SQLiteDatabase$Function;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/requery/android/database/sqlite/SQLiteFunction$MyArgs;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/requery/android/database/sqlite/SQLiteFunction$MyArgs;-><init>(Lio/requery/android/database/sqlite/SQLiteFunction$1;)V

    iput-object v0, p0, Lio/requery/android/database/sqlite/SQLiteFunction;->args:Lio/requery/android/database/sqlite/SQLiteFunction$MyArgs;

    new-instance v0, Lio/requery/android/database/sqlite/SQLiteFunction$MyResult;

    invoke-direct {v0, v1}, Lio/requery/android/database/sqlite/SQLiteFunction$MyResult;-><init>(Lio/requery/android/database/sqlite/SQLiteFunction$1;)V

    iput-object v0, p0, Lio/requery/android/database/sqlite/SQLiteFunction;->result:Lio/requery/android/database/sqlite/SQLiteFunction$MyResult;

    if-eqz p1, :cond_0

    iput-object p1, p0, Lio/requery/android/database/sqlite/SQLiteFunction;->name:Ljava/lang/String;

    iput p2, p0, Lio/requery/android/database/sqlite/SQLiteFunction;->numArgs:I

    iput-object p3, p0, Lio/requery/android/database/sqlite/SQLiteFunction;->callback:Lio/requery/android/database/sqlite/SQLiteDatabase$Function;

    iput p4, p0, Lio/requery/android/database/sqlite/SQLiteFunction;->flags:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "name must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private dispatchCallback(JJI)V
    .locals 1

    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteFunction;->result:Lio/requery/android/database/sqlite/SQLiteFunction$MyResult;

    iput-wide p1, v0, Lio/requery/android/database/sqlite/SQLiteFunction$MyResult;->contextPtr:J

    iget-object p1, p0, Lio/requery/android/database/sqlite/SQLiteFunction;->args:Lio/requery/android/database/sqlite/SQLiteFunction$MyArgs;

    iput-wide p3, p1, Lio/requery/android/database/sqlite/SQLiteFunction$MyArgs;->argsPtr:J

    iput p5, p1, Lio/requery/android/database/sqlite/SQLiteFunction$MyArgs;->argsCount:I

    const/4 p2, 0x0

    const-wide/16 p3, 0x0

    :try_start_0
    iget-object p5, p0, Lio/requery/android/database/sqlite/SQLiteFunction;->callback:Lio/requery/android/database/sqlite/SQLiteDatabase$Function;

    invoke-interface {p5, p1, v0}, Lio/requery/android/database/sqlite/SQLiteDatabase$Function;->callback(Lio/requery/android/database/sqlite/SQLiteDatabase$Function$Args;Lio/requery/android/database/sqlite/SQLiteDatabase$Function$Result;)V

    iget-object p1, p0, Lio/requery/android/database/sqlite/SQLiteFunction;->result:Lio/requery/android/database/sqlite/SQLiteFunction$MyResult;

    iget-boolean p1, p1, Lio/requery/android/database/sqlite/SQLiteFunction$MyResult;->isSet:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lio/requery/android/database/sqlite/SQLiteFunction;->result:Lio/requery/android/database/sqlite/SQLiteFunction$MyResult;

    invoke-virtual {p1}, Lio/requery/android/database/sqlite/SQLiteFunction$MyResult;->setNull()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object p1, p0, Lio/requery/android/database/sqlite/SQLiteFunction;->result:Lio/requery/android/database/sqlite/SQLiteFunction$MyResult;

    iput-wide p3, p1, Lio/requery/android/database/sqlite/SQLiteFunction$MyResult;->contextPtr:J

    iput-boolean p2, p1, Lio/requery/android/database/sqlite/SQLiteFunction$MyResult;->isSet:Z

    iget-object p1, p0, Lio/requery/android/database/sqlite/SQLiteFunction;->args:Lio/requery/android/database/sqlite/SQLiteFunction$MyArgs;

    iput-wide p3, p1, Lio/requery/android/database/sqlite/SQLiteFunction$MyArgs;->argsPtr:J

    iput p2, p1, Lio/requery/android/database/sqlite/SQLiteFunction$MyArgs;->argsCount:I

    return-void

    :catchall_0
    move-exception p1

    iget-object p5, p0, Lio/requery/android/database/sqlite/SQLiteFunction;->result:Lio/requery/android/database/sqlite/SQLiteFunction$MyResult;

    iput-wide p3, p5, Lio/requery/android/database/sqlite/SQLiteFunction$MyResult;->contextPtr:J

    iput-boolean p2, p5, Lio/requery/android/database/sqlite/SQLiteFunction$MyResult;->isSet:Z

    iget-object p5, p0, Lio/requery/android/database/sqlite/SQLiteFunction;->args:Lio/requery/android/database/sqlite/SQLiteFunction$MyArgs;

    iput-wide p3, p5, Lio/requery/android/database/sqlite/SQLiteFunction$MyArgs;->argsPtr:J

    iput p2, p5, Lio/requery/android/database/sqlite/SQLiteFunction$MyArgs;->argsCount:I

    throw p1
.end method

.method static native nativeGetArgBlob(JI)[B
.end method

.method static native nativeGetArgDouble(JI)D
.end method

.method static native nativeGetArgInt(JI)I
.end method

.method static native nativeGetArgLong(JI)J
.end method

.method static native nativeGetArgString(JI)Ljava/lang/String;
.end method

.method static native nativeSetResultBlob(J[B)V
.end method

.method static native nativeSetResultDouble(JD)V
.end method

.method static native nativeSetResultError(JLjava/lang/String;)V
.end method

.method static native nativeSetResultInt(JI)V
.end method

.method static native nativeSetResultLong(JJ)V
.end method

.method static native nativeSetResultNull(J)V
.end method

.method static native nativeSetResultString(JLjava/lang/String;)V
.end method
