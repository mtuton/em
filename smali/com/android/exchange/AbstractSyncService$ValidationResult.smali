.class public Lcom/android/exchange/AbstractSyncService$ValidationResult;
.super Ljava/lang/Object;
.source "AbstractSyncService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/AbstractSyncService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ValidationResult"
.end annotation


# static fields
.field static final CONNECTION_FAILURE:I = 0x1

.field static final EXCEPTION:I = 0x3

.field static final NO_FAILURE:I = 0x0

.field static final VALIDATION_FAILURE:I = 0x2

.field static final succeeded:Lcom/android/exchange/AbstractSyncService$ValidationResult;


# instance fields
.field exception:Ljava/lang/Exception;

.field failure:I

.field reason:Ljava/lang/String;

.field success:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 219
    new-instance v0, Lcom/android/exchange/AbstractSyncService$ValidationResult;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/exchange/AbstractSyncService$ValidationResult;-><init>(ZILjava/lang/String;)V

    sput-object v0, Lcom/android/exchange/AbstractSyncService$ValidationResult;->succeeded:Lcom/android/exchange/AbstractSyncService$ValidationResult;

    return-void
.end method

.method constructor <init>(Ljava/lang/Exception;)V
    .locals 2
    .parameter "e"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    iput v0, p0, Lcom/android/exchange/AbstractSyncService$ValidationResult;->failure:I

    .line 222
    iput-object v1, p0, Lcom/android/exchange/AbstractSyncService$ValidationResult;->reason:Ljava/lang/String;

    .line 223
    iput-object v1, p0, Lcom/android/exchange/AbstractSyncService$ValidationResult;->exception:Ljava/lang/Exception;

    .line 236
    iput-boolean v0, p0, Lcom/android/exchange/AbstractSyncService$ValidationResult;->success:Z

    .line 237
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/exchange/AbstractSyncService$ValidationResult;->failure:I

    .line 238
    iput-object p1, p0, Lcom/android/exchange/AbstractSyncService$ValidationResult;->exception:Ljava/lang/Exception;

    .line 239
    return-void
.end method

.method constructor <init>(Z)V
    .locals 2
    .parameter "_success"

    .prologue
    const/4 v1, 0x0

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/exchange/AbstractSyncService$ValidationResult;->failure:I

    .line 222
    iput-object v1, p0, Lcom/android/exchange/AbstractSyncService$ValidationResult;->reason:Ljava/lang/String;

    .line 223
    iput-object v1, p0, Lcom/android/exchange/AbstractSyncService$ValidationResult;->exception:Ljava/lang/Exception;

    .line 232
    iput-boolean p1, p0, Lcom/android/exchange/AbstractSyncService$ValidationResult;->success:Z

    .line 233
    return-void
.end method

.method constructor <init>(ZILjava/lang/String;)V
    .locals 2
    .parameter "_success"
    .parameter "_failure"
    .parameter "_reason"

    .prologue
    const/4 v1, 0x0

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/exchange/AbstractSyncService$ValidationResult;->failure:I

    .line 222
    iput-object v1, p0, Lcom/android/exchange/AbstractSyncService$ValidationResult;->reason:Ljava/lang/String;

    .line 223
    iput-object v1, p0, Lcom/android/exchange/AbstractSyncService$ValidationResult;->exception:Ljava/lang/Exception;

    .line 226
    iput-boolean p1, p0, Lcom/android/exchange/AbstractSyncService$ValidationResult;->success:Z

    .line 227
    iput p2, p0, Lcom/android/exchange/AbstractSyncService$ValidationResult;->failure:I

    .line 228
    iput-object p3, p0, Lcom/android/exchange/AbstractSyncService$ValidationResult;->reason:Ljava/lang/String;

    .line 229
    return-void
.end method


# virtual methods
.method public getReason()Ljava/lang/String;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService$ValidationResult;->reason:Ljava/lang/String;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 1

    .prologue
    .line 242
    iget-boolean v0, p0, Lcom/android/exchange/AbstractSyncService$ValidationResult;->success:Z

    return v0
.end method
