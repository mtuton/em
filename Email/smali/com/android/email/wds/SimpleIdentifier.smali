.class abstract Lcom/android/email/wds/SimpleIdentifier;
.super Ljava/lang/Object;
.source "ServicemineParser.java"


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/android/email/wds/SimpleIdentifier;->name:Ljava/lang/String;

    .line 32
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/email/wds/SimpleIdentifier;->name:Ljava/lang/String;

    return-object v0
.end method
