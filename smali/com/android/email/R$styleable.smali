.class public final Lcom/android/email/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final EmailTwSoftkeyItem:[I = null

.field public static final EmailTwSoftkeyItem_itemImage:I = 0x2

.field public static final EmailTwSoftkeyItem_itemImageAlign:I = 0x0

.field public static final EmailTwSoftkeyItem_itemText:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21462
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/email/R$styleable;->EmailTwSoftkeyItem:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x1t 0x7ft
        0x1t 0x0t 0x1t 0x7ft
        0x2t 0x0t 0x1t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21447
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
