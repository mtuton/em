.class public Lorg/apache/commons/io/comparator/DefaultFileComparator;
.super Ljava/lang/Object;
.source "DefaultFileComparator.java"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# static fields
.field public static final DEFAULT_COMPARATOR:Ljava/util/Comparator;

.field public static final DEFAULT_REVERSE:Ljava/util/Comparator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 50
    new-instance v0, Lorg/apache/commons/io/comparator/DefaultFileComparator;

    invoke-direct {v0}, Lorg/apache/commons/io/comparator/DefaultFileComparator;-><init>()V

    sput-object v0, Lorg/apache/commons/io/comparator/DefaultFileComparator;->DEFAULT_COMPARATOR:Ljava/util/Comparator;

    .line 53
    new-instance v0, Lorg/apache/commons/io/comparator/ReverseComparator;

    sget-object v1, Lorg/apache/commons/io/comparator/DefaultFileComparator;->DEFAULT_COMPARATOR:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Lorg/apache/commons/io/comparator/ReverseComparator;-><init>(Ljava/util/Comparator;)V

    sput-object v0, Lorg/apache/commons/io/comparator/DefaultFileComparator;->DEFAULT_REVERSE:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4
    .parameter "obj1"
    .parameter "obj2"

    .prologue
    .line 64
    move-object v0, p1

    check-cast v0, Ljava/io/File;

    move-object v1, v0

    .line 65
    .local v1, file1:Ljava/io/File;
    move-object v0, p2

    check-cast v0, Ljava/io/File;

    move-object v2, v0

    .line 66
    .local v2, file2:Ljava/io/File;
    invoke-virtual {v1, v2}, Ljava/io/File;->compareTo(Ljava/io/File;)I

    move-result v3

    return v3
.end method
