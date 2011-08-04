.class abstract Lcom/android/exchange/adapter/EasActivator$ASABaseParser;
.super Ljava/lang/Object;
.source "EasActivator.java"

# interfaces
.implements Lcom/android/exchange/adapter/EasActivator$IASAParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/adapter/EasActivator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "ASABaseParser"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exchange/adapter/EasActivator;


# direct methods
.method protected constructor <init>(Lcom/android/exchange/adapter/EasActivator;)V
    .locals 0
    .parameter

    .prologue
    .line 412
    iput-object p1, p0, Lcom/android/exchange/adapter/EasActivator$ASABaseParser;->this$0:Lcom/android/exchange/adapter/EasActivator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 413
    return-void
.end method
