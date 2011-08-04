.class Lcom/android/exchange/adapter/TasksSyncAdapter$ReturnVal;
.super Ljava/lang/Object;
.source "TasksSyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/adapter/TasksSyncAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReturnVal"
.end annotation


# instance fields
.field private result:Z

.field final synthetic this$0:Lcom/android/exchange/adapter/TasksSyncAdapter;


# direct methods
.method constructor <init>(Lcom/android/exchange/adapter/TasksSyncAdapter;)V
    .locals 1
    .parameter

    .prologue
    .line 538
    iput-object p1, p0, Lcom/android/exchange/adapter/TasksSyncAdapter$ReturnVal;->this$0:Lcom/android/exchange/adapter/TasksSyncAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 539
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/exchange/adapter/TasksSyncAdapter$ReturnVal;->result:Z

    return-void
.end method


# virtual methods
.method public getVal()Z
    .locals 1

    .prologue
    .line 545
    iget-boolean v0, p0, Lcom/android/exchange/adapter/TasksSyncAdapter$ReturnVal;->result:Z

    return v0
.end method

.method public setVal(Z)V
    .locals 0
    .parameter "val"

    .prologue
    .line 542
    iput-boolean p1, p0, Lcom/android/exchange/adapter/TasksSyncAdapter$ReturnVal;->result:Z

    .line 543
    return-void
.end method
