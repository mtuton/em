.class public Lcom/android/exchange/SyncManager$SyncStatus;
.super Ljava/lang/Object;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/SyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SyncStatus"
.end annotation


# static fields
.field public static final DIED:I = 0x1

.field public static final IDLE:I = 0x3

.field public static final NOT_RUNNING:I = 0x0

.field public static final SYNC:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/android/exchange/SyncManager;


# direct methods
.method public constructor <init>(Lcom/android/exchange/SyncManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1231
    iput-object p1, p0, Lcom/android/exchange/SyncManager$SyncStatus;->this$0:Lcom/android/exchange/SyncManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
