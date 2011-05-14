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


# static fields
.field static final MEMBER:Ljava/lang/String; = "member"

.field static final METHORDRESPONSE:Ljava/lang/String; = "methodResponse"

.field static final NAME:Ljava/lang/String; = "name"

.field static final PARAM:Ljava/lang/String; = "param"

.field static final PARAMS:Ljava/lang/String; = "params"

.field static final STRUCT:Ljava/lang/String; = "struct"

.field static final VALUE:Ljava/lang/String; = "value"


# instance fields
.field final synthetic this$0:Lcom/android/exchange/adapter/EasActivator;


# direct methods
.method protected constructor <init>(Lcom/android/exchange/adapter/EasActivator;)V
    .locals 0
    .parameter

    .prologue
    .line 418
    iput-object p1, p0, Lcom/android/exchange/adapter/EasActivator$ASABaseParser;->this$0:Lcom/android/exchange/adapter/EasActivator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 419
    return-void
.end method
