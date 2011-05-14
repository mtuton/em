.class public Lorg/apache/commons/io/comparator/NameFileComparator;
.super Ljava/lang/Object;
.source "NameFileComparator.java"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# static fields
.field public static final NAME_COMPARATOR:Ljava/util/Comparator;

.field public static final NAME_INSENSITIVE_COMPARATOR:Ljava/util/Comparator;

.field public static final NAME_INSENSITIVE_REVERSE:Ljava/util/Comparator;

.field public static final NAME_REVERSE:Ljava/util/Comparator;

.field public static final NAME_SYSTEM_COMPARATOR:Ljava/util/Comparator;

.field public static final NAME_SYSTEM_REVERSE:Ljava/util/Comparator;


# instance fields
.field private final caseSensitivity:Lorg/apache/commons/io/IOCase;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 55
    new-instance v0, Lorg/apache/commons/io/comparator/NameFileComparator;

    invoke-direct {v0}, Lorg/apache/commons/io/comparator/NameFileComparator;-><init>()V

    sput-object v0, Lorg/apache/commons/io/comparator/NameFileComparator;->NAME_COMPARATOR:Ljava/util/Comparator;

    .line 58
    new-instance v0, Lorg/apache/commons/io/comparator/ReverseComparator;

    sget-object v1, Lorg/apache/commons/io/comparator/NameFileComparator;->NAME_COMPARATOR:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Lorg/apache/commons/io/comparator/ReverseComparator;-><init>(Ljava/util/Comparator;)V

    sput-object v0, Lorg/apache/commons/io/comparator/NameFileComparator;->NAME_REVERSE:Ljava/util/Comparator;

    .line 61
    new-instance v0, Lorg/apache/commons/io/comparator/NameFileComparator;

    sget-object v1, Lorg/apache/commons/io/IOCase;->INSENSITIVE:Lorg/apache/commons/io/IOCase;

    invoke-direct {v0, v1}, Lorg/apache/commons/io/comparator/NameFileComparator;-><init>(Lorg/apache/commons/io/IOCase;)V

    sput-object v0, Lorg/apache/commons/io/comparator/NameFileComparator;->NAME_INSENSITIVE_COMPARATOR:Ljava/util/Comparator;

    .line 64
    new-instance v0, Lorg/apache/commons/io/comparator/ReverseComparator;

    sget-object v1, Lorg/apache/commons/io/comparator/NameFileComparator;->NAME_INSENSITIVE_COMPARATOR:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Lorg/apache/commons/io/comparator/ReverseComparator;-><init>(Ljava/util/Comparator;)V

    sput-object v0, Lorg/apache/commons/io/comparator/NameFileComparator;->NAME_INSENSITIVE_REVERSE:Ljava/util/Comparator;

    .line 67
    new-instance v0, Lorg/apache/commons/io/comparator/NameFileComparator;

    sget-object v1, Lorg/apache/commons/io/IOCase;->SYSTEM:Lorg/apache/commons/io/IOCase;

    invoke-direct {v0, v1}, Lorg/apache/commons/io/comparator/NameFileComparator;-><init>(Lorg/apache/commons/io/IOCase;)V

    sput-object v0, Lorg/apache/commons/io/comparator/NameFileComparator;->NAME_SYSTEM_COMPARATOR:Ljava/util/Comparator;

    .line 70
    new-instance v0, Lorg/apache/commons/io/comparator/ReverseComparator;

    sget-object v1, Lorg/apache/commons/io/comparator/NameFileComparator;->NAME_SYSTEM_COMPARATOR:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Lorg/apache/commons/io/comparator/ReverseComparator;-><init>(Ljava/util/Comparator;)V

    sput-object v0, Lorg/apache/commons/io/comparator/NameFileComparator;->NAME_SYSTEM_REVERSE:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    sget-object v0, Lorg/apache/commons/io/IOCase;->SENSITIVE:Lorg/apache/commons/io/IOCase;

    iput-object v0, p0, Lorg/apache/commons/io/comparator/NameFileComparator;->caseSensitivity:Lorg/apache/commons/io/IOCase;

    .line 80
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/io/IOCase;)V
    .locals 1
    .parameter "caseSensitivity"

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    if-nez p1, :cond_0

    sget-object v0, Lorg/apache/commons/io/IOCase;->SENSITIVE:Lorg/apache/commons/io/IOCase;

    :goto_0
    iput-object v0, p0, Lorg/apache/commons/io/comparator/NameFileComparator;->caseSensitivity:Lorg/apache/commons/io/IOCase;

    .line 89
    return-void

    :cond_0
    move-object v0, p1

    .line 88
    goto :goto_0
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 6
    .parameter "obj1"
    .parameter "obj2"

    .prologue
    .line 102
    move-object v0, p1

    check-cast v0, Ljava/io/File;

    move-object v1, v0

    .line 103
    .local v1, file1:Ljava/io/File;
    move-object v0, p2

    check-cast v0, Ljava/io/File;

    move-object v2, v0

    .line 104
    .local v2, file2:Ljava/io/File;
    iget-object v3, p0, Lorg/apache/commons/io/comparator/NameFileComparator;->caseSensitivity:Lorg/apache/commons/io/IOCase;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/apache/commons/io/IOCase;->checkCompareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    return v3
.end method
