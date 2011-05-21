.class Lcom/android/email/activity/RecentList$OutputProjection;
.super Ljava/lang/Object;
.source "RecentList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/RecentList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OutputProjection"
.end annotation


# static fields
.field static final EMAIL:Ljava/lang/String; = "email"

.field static final _ID:Ljava/lang/String; = "_id"


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/RecentList;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/RecentList;)V
    .locals 0
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/email/activity/RecentList$OutputProjection;->this$0:Lcom/android/email/activity/RecentList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
