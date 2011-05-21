.class public abstract Lorg/mozilla/intl/chardet/nsPSMDetector;
.super Ljava/lang/Object;
.source "nsPSMDetector.java"


# static fields
.field public static final ALL:I = 0x0

.field public static final CHINESE:I = 0x2

.field public static final JAPANESE:I = 0x1

.field public static final KOREAN:I = 0x5

.field public static final MAX_VERIFIERS:I = 0x10

.field public static final NO_OF_LANGUAGES:I = 0x6

.field public static final SIMPLIFIED_CHINESE:I = 0x3

.field public static final TRADITIONAL_CHINESE:I = 0x4


# instance fields
.field mClassItems:I

.field mClassRunSampler:Z

.field mDone:Z

.field mItemIdx:[I

.field mItems:I

.field mRunSampler:Z

.field mSampler:Lorg/mozilla/intl/chardet/nsEUCSampler;

.field mState:[B

.field mStatisticsData:[Lorg/mozilla/intl/chardet/nsEUCStatistics;

.field mVerifier:[Lorg/mozilla/intl/chardet/nsVerifier;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x10

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    new-instance v0, Lorg/mozilla/intl/chardet/nsEUCSampler;

    invoke-direct {v0}, Lorg/mozilla/intl/chardet/nsEUCSampler;-><init>()V

    iput-object v0, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mSampler:Lorg/mozilla/intl/chardet/nsEUCSampler;

    .line 137
    new-array v0, v1, [B

    iput-object v0, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mState:[B

    .line 139
    new-array v0, v1, [I

    iput-object v0, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItemIdx:[I

    .line 159
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/mozilla/intl/chardet/nsPSMDetector;->initVerifiers(I)V

    .line 161
    invoke-virtual {p0}, Lorg/mozilla/intl/chardet/nsPSMDetector;->Reset()V

    .line 163
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .parameter "langFlag"

    .prologue
    const/16 v1, 0x10

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    new-instance v0, Lorg/mozilla/intl/chardet/nsEUCSampler;

    invoke-direct {v0}, Lorg/mozilla/intl/chardet/nsEUCSampler;-><init>()V

    iput-object v0, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mSampler:Lorg/mozilla/intl/chardet/nsEUCSampler;

    .line 137
    new-array v0, v1, [B

    iput-object v0, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mState:[B

    .line 139
    new-array v0, v1, [I

    iput-object v0, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItemIdx:[I

    .line 169
    invoke-virtual {p0, p1}, Lorg/mozilla/intl/chardet/nsPSMDetector;->initVerifiers(I)V

    .line 171
    invoke-virtual {p0}, Lorg/mozilla/intl/chardet/nsPSMDetector;->Reset()V

    .line 173
    return-void
.end method

.method public constructor <init>(I[Lorg/mozilla/intl/chardet/nsVerifier;[Lorg/mozilla/intl/chardet/nsEUCStatistics;)V
    .locals 2
    .parameter "aItems"
    .parameter "aVerifierSet"
    .parameter "aStatisticsSet"

    .prologue
    const/16 v1, 0x10

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    new-instance v0, Lorg/mozilla/intl/chardet/nsEUCSampler;

    invoke-direct {v0}, Lorg/mozilla/intl/chardet/nsEUCSampler;-><init>()V

    iput-object v0, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mSampler:Lorg/mozilla/intl/chardet/nsEUCSampler;

    .line 137
    new-array v0, v1, [B

    iput-object v0, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mState:[B

    .line 139
    new-array v0, v1, [I

    iput-object v0, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItemIdx:[I

    .line 181
    if-eqz p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mClassRunSampler:Z

    .line 183
    iput-object p3, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mStatisticsData:[Lorg/mozilla/intl/chardet/nsEUCStatistics;

    .line 185
    iput-object p2, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mVerifier:[Lorg/mozilla/intl/chardet/nsVerifier;

    .line 189
    iput p1, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mClassItems:I

    .line 191
    invoke-virtual {p0}, Lorg/mozilla/intl/chardet/nsPSMDetector;->Reset()V

    .line 193
    return-void

    .line 181
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public DataEnd()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string v4, "GB18030"

    .line 701
    iget-boolean v0, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mDone:Z

    if-ne v0, v2, :cond_1

    .line 731
    :cond_0
    :goto_0
    return-void

    .line 707
    :cond_1
    iget v0, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItems:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 709
    iget-object v0, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mVerifier:[Lorg/mozilla/intl/chardet/nsVerifier;

    iget-object v1, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItemIdx:[I

    aget v1, v1, v3

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/mozilla/intl/chardet/nsVerifier;->charset()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GB18030"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 711
    iget-object v0, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mVerifier:[Lorg/mozilla/intl/chardet/nsVerifier;

    iget-object v1, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItemIdx:[I

    aget v1, v1, v2

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/mozilla/intl/chardet/nsVerifier;->charset()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mozilla/intl/chardet/nsPSMDetector;->Report(Ljava/lang/String;)V

    .line 713
    iput-boolean v2, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mDone:Z

    .line 727
    :cond_2
    :goto_1
    iget-boolean v0, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mRunSampler:Z

    if-eqz v0, :cond_0

    .line 729
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v3, v2}, Lorg/mozilla/intl/chardet/nsPSMDetector;->Sample([BIZ)V

    goto :goto_0

    .line 715
    :cond_3
    iget-object v0, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mVerifier:[Lorg/mozilla/intl/chardet/nsVerifier;

    iget-object v1, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItemIdx:[I

    aget v1, v1, v2

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/mozilla/intl/chardet/nsVerifier;->charset()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GB18030"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 717
    iget-object v0, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mVerifier:[Lorg/mozilla/intl/chardet/nsVerifier;

    iget-object v1, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItemIdx:[I

    aget v1, v1, v3

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/mozilla/intl/chardet/nsVerifier;->charset()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mozilla/intl/chardet/nsPSMDetector;->Report(Ljava/lang/String;)V

    .line 719
    iput-boolean v2, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mDone:Z

    goto :goto_1
.end method

.method public HandleData([BI)Z
    .locals 11
    .parameter "aBuf"
    .parameter "len"

    .prologue
    const/4 v10, 0x1

    .line 549
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, p2, :cond_9

    .line 551
    aget-byte v0, p1, v1

    .line 555
    .local v0, b:B
    const/4 v2, 0x0

    .local v2, j:I
    :cond_0
    :goto_1
    iget v7, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItems:I

    if-ge v2, v7, :cond_3

    .line 559
    iget-object v7, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mVerifier:[Lorg/mozilla/intl/chardet/nsVerifier;

    iget-object v8, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItemIdx:[I

    aget v8, v8, v2

    aget-object v7, v7, v8

    iget-object v8, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mState:[B

    aget-byte v8, v8, v2

    invoke-static {v7, v0, v8}, Lorg/mozilla/intl/chardet/nsVerifier;->getNextState(Lorg/mozilla/intl/chardet/nsVerifier;BB)B

    move-result v6

    .line 569
    .local v6, st:B
    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    .line 577
    iget-object v7, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mVerifier:[Lorg/mozilla/intl/chardet/nsVerifier;

    iget-object v8, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItemIdx:[I

    aget v8, v8, v2

    aget-object v7, v7, v8

    invoke-virtual {v7}, Lorg/mozilla/intl/chardet/nsVerifier;->charset()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/mozilla/intl/chardet/nsPSMDetector;->Report(Ljava/lang/String;)V

    .line 579
    iput-boolean v10, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mDone:Z

    .line 581
    iget-boolean v7, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mDone:Z

    .line 689
    .end local v0           #b:B
    .end local v2           #j:I
    .end local v6           #st:B
    :goto_2
    return v7

    .line 585
    .restart local v0       #b:B
    .restart local v2       #j:I
    .restart local v6       #st:B
    :cond_1
    if-ne v6, v10, :cond_2

    .line 591
    iget v7, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItems:I

    sub-int/2addr v7, v10

    iput v7, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItems:I

    .line 593
    iget v7, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItems:I

    if-ge v2, v7, :cond_0

    .line 595
    iget-object v7, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItemIdx:[I

    iget-object v8, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItemIdx:[I

    iget v9, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItems:I

    aget v8, v8, v9

    aput v8, v7, v2

    .line 597
    iget-object v7, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mState:[B

    iget-object v8, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mState:[B

    iget v9, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItems:I

    aget-byte v8, v8, v9

    aput-byte v8, v7, v2

    goto :goto_1

    .line 607
    :cond_2
    iget-object v7, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mState:[B

    add-int/lit8 v3, v2, 0x1

    .end local v2           #j:I
    .local v3, j:I
    aput-byte v6, v7, v2

    move v2, v3

    .end local v3           #j:I
    .restart local v2       #j:I
    goto :goto_1

    .line 617
    .end local v6           #st:B
    :cond_3
    iget v7, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItems:I

    if-gt v7, v10, :cond_5

    .line 621
    iget v7, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItems:I

    if-ne v10, v7, :cond_4

    .line 623
    iget-object v7, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mVerifier:[Lorg/mozilla/intl/chardet/nsVerifier;

    iget-object v8, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItemIdx:[I

    const/4 v9, 0x0

    aget v8, v8, v9

    aget-object v7, v7, v8

    invoke-virtual {v7}, Lorg/mozilla/intl/chardet/nsVerifier;->charset()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/mozilla/intl/chardet/nsPSMDetector;->Report(Ljava/lang/String;)V

    .line 627
    :cond_4
    iput-boolean v10, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mDone:Z

    .line 629
    iget-boolean v7, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mDone:Z

    goto :goto_2

    .line 639
    :cond_5
    const/4 v5, 0x0

    .line 641
    .local v5, nonUCS2Num:I
    const/4 v4, 0x0

    .line 645
    .local v4, nonUCS2Idx:I
    const/4 v2, 0x0

    :goto_3
    iget v7, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItems:I

    if-ge v2, v7, :cond_7

    .line 647
    iget-object v7, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mVerifier:[Lorg/mozilla/intl/chardet/nsVerifier;

    iget-object v8, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItemIdx:[I

    aget v8, v8, v2

    aget-object v7, v7, v8

    invoke-virtual {v7}, Lorg/mozilla/intl/chardet/nsVerifier;->isUCS2()Z

    move-result v7

    if-nez v7, :cond_6

    iget-object v7, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mVerifier:[Lorg/mozilla/intl/chardet/nsVerifier;

    iget-object v8, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItemIdx:[I

    aget v8, v8, v2

    aget-object v7, v7, v8

    invoke-virtual {v7}, Lorg/mozilla/intl/chardet/nsVerifier;->isUCS2()Z

    move-result v7

    if-nez v7, :cond_6

    .line 653
    add-int/lit8 v5, v5, 0x1

    .line 655
    move v4, v2

    .line 645
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 663
    :cond_7
    if-ne v10, v5, :cond_8

    .line 665
    iget-object v7, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mVerifier:[Lorg/mozilla/intl/chardet/nsVerifier;

    iget-object v8, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItemIdx:[I

    aget v8, v8, v4

    aget-object v7, v7, v8

    invoke-virtual {v7}, Lorg/mozilla/intl/chardet/nsVerifier;->charset()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/mozilla/intl/chardet/nsPSMDetector;->Report(Ljava/lang/String;)V

    .line 667
    iput-boolean v10, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mDone:Z

    .line 669
    iget-boolean v7, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mDone:Z

    goto/16 :goto_2

    .line 549
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 683
    .end local v0           #b:B
    .end local v2           #j:I
    .end local v4           #nonUCS2Idx:I
    .end local v5           #nonUCS2Num:I
    :cond_9
    iget-boolean v7, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mRunSampler:Z

    if-eqz v7, :cond_a

    .line 685
    invoke-virtual {p0, p1, p2}, Lorg/mozilla/intl/chardet/nsPSMDetector;->Sample([BI)V

    .line 689
    :cond_a
    iget-boolean v7, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mDone:Z

    goto/16 :goto_2
.end method

.method public abstract Report(Ljava/lang/String;)V
.end method

.method public Reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 201
    iget-boolean v1, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mClassRunSampler:Z

    iput-boolean v1, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mRunSampler:Z

    .line 203
    iput-boolean v2, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mDone:Z

    .line 205
    iget v1, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mClassItems:I

    iput v1, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItems:I

    .line 209
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItems:I

    if-ge v0, v1, :cond_0

    .line 211
    iget-object v1, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mState:[B

    aput-byte v2, v1, v0

    .line 213
    iget-object v1, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItemIdx:[I

    aput v0, v1, v0

    .line 209
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 219
    :cond_0
    iget-object v1, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mSampler:Lorg/mozilla/intl/chardet/nsEUCSampler;

    invoke-virtual {v1}, Lorg/mozilla/intl/chardet/nsEUCSampler;->Reset()V

    .line 221
    return-void
.end method

.method public Sample([BI)V
    .locals 1
    .parameter "aBuf"
    .parameter "aLen"

    .prologue
    .line 737
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/mozilla/intl/chardet/nsPSMDetector;->Sample([BIZ)V

    .line 739
    return-void
.end method

.method public Sample([BIZ)V
    .locals 17
    .parameter "aBuf"
    .parameter "aLen"
    .parameter "aLastChance"

    .prologue
    .line 747
    const/4 v9, 0x0

    .line 751
    .local v9, possibleCandidateNum:I
    const/4 v7, 0x0

    .line 755
    .local v7, eucNum:I
    const/4 v8, 0x0

    .local v8, j:I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItems:I

    move v11, v0

    if-ge v8, v11, :cond_2

    .line 757
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mStatisticsData:[Lorg/mozilla/intl/chardet/nsEUCStatistics;

    move-object v11, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItemIdx:[I

    move-object v12, v0

    aget v12, v12, v8

    aget-object v11, v11, v12

    if-eqz v11, :cond_0

    .line 759
    add-int/lit8 v7, v7, 0x1

    .line 761
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mVerifier:[Lorg/mozilla/intl/chardet/nsVerifier;

    move-object v11, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItemIdx:[I

    move-object v12, v0

    aget v12, v12, v8

    aget-object v11, v11, v12

    invoke-virtual {v11}, Lorg/mozilla/intl/chardet/nsVerifier;->isUCS2()Z

    move-result v11

    if-nez v11, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mVerifier:[Lorg/mozilla/intl/chardet/nsVerifier;

    move-object v11, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItemIdx:[I

    move-object v12, v0

    aget v12, v12, v8

    aget-object v11, v11, v12

    invoke-virtual {v11}, Lorg/mozilla/intl/chardet/nsVerifier;->charset()Ljava/lang/String;

    move-result-object v11

    const-string v12, "GB18030"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 765
    add-int/lit8 v9, v9, 0x1

    .line 755
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 771
    :cond_2
    const/4 v11, 0x1

    if-le v7, v11, :cond_7

    const/4 v11, 0x1

    :goto_1
    move v0, v11

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/mozilla/intl/chardet/nsPSMDetector;->mRunSampler:Z

    .line 775
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mRunSampler:Z

    move v11, v0

    if-eqz v11, :cond_9

    .line 777
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mSampler:Lorg/mozilla/intl/chardet/nsEUCSampler;

    move-object v11, v0

    move-object v0, v11

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/intl/chardet/nsEUCSampler;->Sample([BI)Z

    move-result v11

    move v0, v11

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/mozilla/intl/chardet/nsPSMDetector;->mRunSampler:Z

    .line 779
    if-eqz p3, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mSampler:Lorg/mozilla/intl/chardet/nsEUCSampler;

    move-object v11, v0

    invoke-virtual {v11}, Lorg/mozilla/intl/chardet/nsEUCSampler;->GetSomeData()Z

    move-result v11

    if-nez v11, :cond_4

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mSampler:Lorg/mozilla/intl/chardet/nsEUCSampler;

    move-object v11, v0

    invoke-virtual {v11}, Lorg/mozilla/intl/chardet/nsEUCSampler;->EnoughData()Z

    move-result v11

    if-eqz v11, :cond_9

    :cond_4
    if-ne v7, v9, :cond_9

    .line 785
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mSampler:Lorg/mozilla/intl/chardet/nsEUCSampler;

    move-object v11, v0

    invoke-virtual {v11}, Lorg/mozilla/intl/chardet/nsEUCSampler;->CalFreq()V

    .line 789
    const/4 v3, -0x1

    .line 791
    .local v3, bestIdx:I
    const/4 v5, 0x0

    .line 793
    .local v5, eucCnt:I
    const/4 v4, 0x0

    .line 795
    .local v4, bestScore:F
    const/4 v8, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItems:I

    move v11, v0

    if-ge v8, v11, :cond_8

    .line 797
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mStatisticsData:[Lorg/mozilla/intl/chardet/nsEUCStatistics;

    move-object v11, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItemIdx:[I

    move-object v12, v0

    aget v12, v12, v8

    aget-object v11, v11, v12

    if-eqz v11, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mVerifier:[Lorg/mozilla/intl/chardet/nsVerifier;

    move-object v11, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItemIdx:[I

    move-object v12, v0

    aget v12, v12, v8

    aget-object v11, v11, v12

    invoke-virtual {v11}, Lorg/mozilla/intl/chardet/nsVerifier;->charset()Ljava/lang/String;

    move-result-object v11

    const-string v12, "Big5"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6

    .line 803
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mSampler:Lorg/mozilla/intl/chardet/nsEUCSampler;

    move-object v11, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mStatisticsData:[Lorg/mozilla/intl/chardet/nsEUCStatistics;

    move-object v12, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItemIdx:[I

    move-object v13, v0

    aget v13, v13, v8

    aget-object v12, v12, v13

    invoke-virtual {v12}, Lorg/mozilla/intl/chardet/nsEUCStatistics;->mFirstByteFreq()[F

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mStatisticsData:[Lorg/mozilla/intl/chardet/nsEUCStatistics;

    move-object v13, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItemIdx:[I

    move-object v14, v0

    aget v14, v14, v8

    aget-object v13, v13, v14

    invoke-virtual {v13}, Lorg/mozilla/intl/chardet/nsEUCStatistics;->mFirstByteWeight()F

    move-result v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mStatisticsData:[Lorg/mozilla/intl/chardet/nsEUCStatistics;

    move-object v14, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItemIdx:[I

    move-object v15, v0

    aget v15, v15, v8

    aget-object v14, v14, v15

    invoke-virtual {v14}, Lorg/mozilla/intl/chardet/nsEUCStatistics;->mSecondByteFreq()[F

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mStatisticsData:[Lorg/mozilla/intl/chardet/nsEUCStatistics;

    move-object v15, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItemIdx:[I

    move-object/from16 v16, v0

    aget v16, v16, v8

    aget-object v15, v15, v16

    invoke-virtual {v15}, Lorg/mozilla/intl/chardet/nsEUCStatistics;->mSecondByteWeight()F

    move-result v15

    invoke-virtual {v11, v12, v13, v14, v15}, Lorg/mozilla/intl/chardet/nsEUCSampler;->GetScore([FF[FF)F

    move-result v10

    .line 815
    .local v10, score:F
    add-int/lit8 v6, v5, 0x1

    .end local v5           #eucCnt:I
    .local v6, eucCnt:I
    if-eqz v5, :cond_5

    cmpl-float v11, v4, v10

    if-lez v11, :cond_a

    .line 817
    :cond_5
    move v4, v10

    .line 819
    move v3, v8

    move v5, v6

    .line 795
    .end local v6           #eucCnt:I
    .end local v10           #score:F
    .restart local v5       #eucCnt:I
    :cond_6
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_2

    .line 771
    .end local v3           #bestIdx:I
    .end local v4           #bestScore:F
    .end local v5           #eucCnt:I
    :cond_7
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 827
    .restart local v3       #bestIdx:I
    .restart local v4       #bestScore:F
    .restart local v5       #eucCnt:I
    :cond_8
    if-ltz v3, :cond_9

    .line 831
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mVerifier:[Lorg/mozilla/intl/chardet/nsVerifier;

    move-object v11, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItemIdx:[I

    move-object v12, v0

    aget v12, v12, v3

    aget-object v11, v11, v12

    invoke-virtual {v11}, Lorg/mozilla/intl/chardet/nsVerifier;->charset()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    move-object v1, v11

    invoke-virtual {v0, v1}, Lorg/mozilla/intl/chardet/nsPSMDetector;->Report(Ljava/lang/String;)V

    .line 833
    const/4 v11, 0x1

    move v0, v11

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/mozilla/intl/chardet/nsPSMDetector;->mDone:Z

    .line 841
    .end local v3           #bestIdx:I
    .end local v4           #bestScore:F
    .end local v5           #eucCnt:I
    :cond_9
    return-void

    .restart local v3       #bestIdx:I
    .restart local v4       #bestScore:F
    .restart local v6       #eucCnt:I
    .restart local v10       #score:F
    :cond_a
    move v5, v6

    .end local v6           #eucCnt:I
    .restart local v5       #eucCnt:I
    goto :goto_3
.end method

.method public getProbableCharsets()[Ljava/lang/String;
    .locals 5

    .prologue
    .line 849
    iget v3, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItems:I

    if-gtz v3, :cond_0

    .line 851
    const/4 v3, 0x1

    new-array v1, v3, [Ljava/lang/String;

    .line 853
    .local v1, nomatch:[Ljava/lang/String;
    const/4 v3, 0x0

    const-string v4, "nomatch"

    aput-object v4, v1, v3

    move-object v3, v1

    .line 867
    .end local v1           #nomatch:[Ljava/lang/String;
    :goto_0
    return-object v3

    .line 861
    :cond_0
    iget v3, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItems:I

    new-array v2, v3, [Ljava/lang/String;

    .line 863
    .local v2, ret:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget v3, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItems:I

    if-ge v0, v3, :cond_1

    .line 865
    iget-object v3, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mVerifier:[Lorg/mozilla/intl/chardet/nsVerifier;

    iget-object v4, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItemIdx:[I

    aget v4, v4, v0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lorg/mozilla/intl/chardet/nsVerifier;->charset()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 863
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move-object v3, v2

    .line 867
    goto :goto_0
.end method

.method protected initVerifiers(I)V
    .locals 10
    .parameter "currVerSet"

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 229
    const/4 v1, 0x0

    .line 235
    .local v1, idx:I
    if-ltz p1, :cond_1

    const/4 v2, 0x6

    if-ge p1, v2, :cond_1

    .line 237
    move v0, p1

    .line 249
    .local v0, currVerifierSet:I
    :goto_0
    iput-object v5, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mVerifier:[Lorg/mozilla/intl/chardet/nsVerifier;

    .line 251
    iput-object v5, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mStatisticsData:[Lorg/mozilla/intl/chardet/nsEUCStatistics;

    .line 255
    const/4 v2, 0x4

    if-ne v0, v2, :cond_2

    .line 259
    const/4 v2, 0x7

    new-array v2, v2, [Lorg/mozilla/intl/chardet/nsVerifier;

    new-instance v3, Lorg/mozilla/intl/chardet/nsUTF8Verifier;

    invoke-direct {v3}, Lorg/mozilla/intl/chardet/nsUTF8Verifier;-><init>()V

    aput-object v3, v2, v7

    new-instance v3, Lorg/mozilla/intl/chardet/nsBIG5Verifier;

    invoke-direct {v3}, Lorg/mozilla/intl/chardet/nsBIG5Verifier;-><init>()V

    aput-object v3, v2, v6

    new-instance v3, Lorg/mozilla/intl/chardet/nsISO2022CNVerifier;

    invoke-direct {v3}, Lorg/mozilla/intl/chardet/nsISO2022CNVerifier;-><init>()V

    aput-object v3, v2, v8

    new-instance v3, Lorg/mozilla/intl/chardet/nsEUCTWVerifier;

    invoke-direct {v3}, Lorg/mozilla/intl/chardet/nsEUCTWVerifier;-><init>()V

    aput-object v3, v2, v9

    const/4 v3, 0x4

    new-instance v4, Lorg/mozilla/intl/chardet/nsCP1252Verifier;

    invoke-direct {v4}, Lorg/mozilla/intl/chardet/nsCP1252Verifier;-><init>()V

    aput-object v4, v2, v3

    const/4 v3, 0x5

    new-instance v4, Lorg/mozilla/intl/chardet/nsUCS2BEVerifier;

    invoke-direct {v4}, Lorg/mozilla/intl/chardet/nsUCS2BEVerifier;-><init>()V

    aput-object v4, v2, v3

    const/4 v3, 0x6

    new-instance v4, Lorg/mozilla/intl/chardet/nsUCS2LEVerifier;

    invoke-direct {v4}, Lorg/mozilla/intl/chardet/nsUCS2LEVerifier;-><init>()V

    aput-object v4, v2, v3

    iput-object v2, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mVerifier:[Lorg/mozilla/intl/chardet/nsVerifier;

    .line 279
    const/4 v2, 0x7

    new-array v2, v2, [Lorg/mozilla/intl/chardet/nsEUCStatistics;

    aput-object v5, v2, v7

    new-instance v3, Lorg/mozilla/intl/chardet/Big5Statistics;

    invoke-direct {v3}, Lorg/mozilla/intl/chardet/Big5Statistics;-><init>()V

    aput-object v3, v2, v6

    aput-object v5, v2, v8

    new-instance v3, Lorg/mozilla/intl/chardet/EUCTWStatistics;

    invoke-direct {v3}, Lorg/mozilla/intl/chardet/EUCTWStatistics;-><init>()V

    aput-object v3, v2, v9

    const/4 v3, 0x4

    aput-object v5, v2, v3

    const/4 v3, 0x5

    aput-object v5, v2, v3

    const/4 v3, 0x6

    aput-object v5, v2, v3

    iput-object v2, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mStatisticsData:[Lorg/mozilla/intl/chardet/nsEUCStatistics;

    .line 523
    :cond_0
    :goto_1
    iget-object v2, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mStatisticsData:[Lorg/mozilla/intl/chardet/nsEUCStatistics;

    if-eqz v2, :cond_7

    move v2, v6

    :goto_2
    iput-boolean v2, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mClassRunSampler:Z

    .line 525
    iget-object v2, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mVerifier:[Lorg/mozilla/intl/chardet/nsVerifier;

    array-length v2, v2

    iput v2, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mClassItems:I

    .line 529
    return-void

    .line 243
    .end local v0           #currVerifierSet:I
    :cond_1
    const/4 v0, 0x0

    .restart local v0       #currVerifierSet:I
    goto :goto_0

    .line 303
    :cond_2
    const/4 v2, 0x5

    if-ne v0, v2, :cond_3

    .line 307
    const/4 v2, 0x6

    new-array v2, v2, [Lorg/mozilla/intl/chardet/nsVerifier;

    new-instance v3, Lorg/mozilla/intl/chardet/nsUTF8Verifier;

    invoke-direct {v3}, Lorg/mozilla/intl/chardet/nsUTF8Verifier;-><init>()V

    aput-object v3, v2, v7

    new-instance v3, Lorg/mozilla/intl/chardet/nsEUCKRVerifier;

    invoke-direct {v3}, Lorg/mozilla/intl/chardet/nsEUCKRVerifier;-><init>()V

    aput-object v3, v2, v6

    new-instance v3, Lorg/mozilla/intl/chardet/nsISO2022KRVerifier;

    invoke-direct {v3}, Lorg/mozilla/intl/chardet/nsISO2022KRVerifier;-><init>()V

    aput-object v3, v2, v8

    new-instance v3, Lorg/mozilla/intl/chardet/nsCP1252Verifier;

    invoke-direct {v3}, Lorg/mozilla/intl/chardet/nsCP1252Verifier;-><init>()V

    aput-object v3, v2, v9

    const/4 v3, 0x4

    new-instance v4, Lorg/mozilla/intl/chardet/nsUCS2BEVerifier;

    invoke-direct {v4}, Lorg/mozilla/intl/chardet/nsUCS2BEVerifier;-><init>()V

    aput-object v4, v2, v3

    const/4 v3, 0x5

    new-instance v4, Lorg/mozilla/intl/chardet/nsUCS2LEVerifier;

    invoke-direct {v4}, Lorg/mozilla/intl/chardet/nsUCS2LEVerifier;-><init>()V

    aput-object v4, v2, v3

    iput-object v2, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mVerifier:[Lorg/mozilla/intl/chardet/nsVerifier;

    goto :goto_1

    .line 329
    :cond_3
    if-ne v0, v9, :cond_4

    .line 333
    const/16 v2, 0x8

    new-array v2, v2, [Lorg/mozilla/intl/chardet/nsVerifier;

    new-instance v3, Lorg/mozilla/intl/chardet/nsUTF8Verifier;

    invoke-direct {v3}, Lorg/mozilla/intl/chardet/nsUTF8Verifier;-><init>()V

    aput-object v3, v2, v7

    new-instance v3, Lorg/mozilla/intl/chardet/nsGB2312Verifier;

    invoke-direct {v3}, Lorg/mozilla/intl/chardet/nsGB2312Verifier;-><init>()V

    aput-object v3, v2, v6

    new-instance v3, Lorg/mozilla/intl/chardet/nsGB18030Verifier;

    invoke-direct {v3}, Lorg/mozilla/intl/chardet/nsGB18030Verifier;-><init>()V

    aput-object v3, v2, v8

    new-instance v3, Lorg/mozilla/intl/chardet/nsISO2022CNVerifier;

    invoke-direct {v3}, Lorg/mozilla/intl/chardet/nsISO2022CNVerifier;-><init>()V

    aput-object v3, v2, v9

    const/4 v3, 0x4

    new-instance v4, Lorg/mozilla/intl/chardet/nsHZVerifier;

    invoke-direct {v4}, Lorg/mozilla/intl/chardet/nsHZVerifier;-><init>()V

    aput-object v4, v2, v3

    const/4 v3, 0x5

    new-instance v4, Lorg/mozilla/intl/chardet/nsCP1252Verifier;

    invoke-direct {v4}, Lorg/mozilla/intl/chardet/nsCP1252Verifier;-><init>()V

    aput-object v4, v2, v3

    const/4 v3, 0x6

    new-instance v4, Lorg/mozilla/intl/chardet/nsUCS2BEVerifier;

    invoke-direct {v4}, Lorg/mozilla/intl/chardet/nsUCS2BEVerifier;-><init>()V

    aput-object v4, v2, v3

    const/4 v3, 0x7

    new-instance v4, Lorg/mozilla/intl/chardet/nsUCS2LEVerifier;

    invoke-direct {v4}, Lorg/mozilla/intl/chardet/nsUCS2LEVerifier;-><init>()V

    aput-object v4, v2, v3

    iput-object v2, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mVerifier:[Lorg/mozilla/intl/chardet/nsVerifier;

    goto/16 :goto_1

    .line 359
    :cond_4
    if-ne v0, v6, :cond_5

    .line 363
    const/4 v2, 0x7

    new-array v2, v2, [Lorg/mozilla/intl/chardet/nsVerifier;

    new-instance v3, Lorg/mozilla/intl/chardet/nsUTF8Verifier;

    invoke-direct {v3}, Lorg/mozilla/intl/chardet/nsUTF8Verifier;-><init>()V

    aput-object v3, v2, v7

    new-instance v3, Lorg/mozilla/intl/chardet/nsSJISVerifier;

    invoke-direct {v3}, Lorg/mozilla/intl/chardet/nsSJISVerifier;-><init>()V

    aput-object v3, v2, v6

    new-instance v3, Lorg/mozilla/intl/chardet/nsEUCJPVerifier;

    invoke-direct {v3}, Lorg/mozilla/intl/chardet/nsEUCJPVerifier;-><init>()V

    aput-object v3, v2, v8

    new-instance v3, Lorg/mozilla/intl/chardet/nsISO2022JPVerifier;

    invoke-direct {v3}, Lorg/mozilla/intl/chardet/nsISO2022JPVerifier;-><init>()V

    aput-object v3, v2, v9

    const/4 v3, 0x4

    new-instance v4, Lorg/mozilla/intl/chardet/nsCP1252Verifier;

    invoke-direct {v4}, Lorg/mozilla/intl/chardet/nsCP1252Verifier;-><init>()V

    aput-object v4, v2, v3

    const/4 v3, 0x5

    new-instance v4, Lorg/mozilla/intl/chardet/nsUCS2BEVerifier;

    invoke-direct {v4}, Lorg/mozilla/intl/chardet/nsUCS2BEVerifier;-><init>()V

    aput-object v4, v2, v3

    const/4 v3, 0x6

    new-instance v4, Lorg/mozilla/intl/chardet/nsUCS2LEVerifier;

    invoke-direct {v4}, Lorg/mozilla/intl/chardet/nsUCS2LEVerifier;-><init>()V

    aput-object v4, v2, v3

    iput-object v2, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mVerifier:[Lorg/mozilla/intl/chardet/nsVerifier;

    goto/16 :goto_1

    .line 385
    :cond_5
    if-ne v0, v8, :cond_6

    .line 389
    const/16 v2, 0xa

    new-array v2, v2, [Lorg/mozilla/intl/chardet/nsVerifier;

    new-instance v3, Lorg/mozilla/intl/chardet/nsUTF8Verifier;

    invoke-direct {v3}, Lorg/mozilla/intl/chardet/nsUTF8Verifier;-><init>()V

    aput-object v3, v2, v7

    new-instance v3, Lorg/mozilla/intl/chardet/nsGB2312Verifier;

    invoke-direct {v3}, Lorg/mozilla/intl/chardet/nsGB2312Verifier;-><init>()V

    aput-object v3, v2, v6

    new-instance v3, Lorg/mozilla/intl/chardet/nsGB18030Verifier;

    invoke-direct {v3}, Lorg/mozilla/intl/chardet/nsGB18030Verifier;-><init>()V

    aput-object v3, v2, v8

    new-instance v3, Lorg/mozilla/intl/chardet/nsBIG5Verifier;

    invoke-direct {v3}, Lorg/mozilla/intl/chardet/nsBIG5Verifier;-><init>()V

    aput-object v3, v2, v9

    const/4 v3, 0x4

    new-instance v4, Lorg/mozilla/intl/chardet/nsISO2022CNVerifier;

    invoke-direct {v4}, Lorg/mozilla/intl/chardet/nsISO2022CNVerifier;-><init>()V

    aput-object v4, v2, v3

    const/4 v3, 0x5

    new-instance v4, Lorg/mozilla/intl/chardet/nsHZVerifier;

    invoke-direct {v4}, Lorg/mozilla/intl/chardet/nsHZVerifier;-><init>()V

    aput-object v4, v2, v3

    const/4 v3, 0x6

    new-instance v4, Lorg/mozilla/intl/chardet/nsEUCTWVerifier;

    invoke-direct {v4}, Lorg/mozilla/intl/chardet/nsEUCTWVerifier;-><init>()V

    aput-object v4, v2, v3

    const/4 v3, 0x7

    new-instance v4, Lorg/mozilla/intl/chardet/nsCP1252Verifier;

    invoke-direct {v4}, Lorg/mozilla/intl/chardet/nsCP1252Verifier;-><init>()V

    aput-object v4, v2, v3

    const/16 v3, 0x8

    new-instance v4, Lorg/mozilla/intl/chardet/nsUCS2BEVerifier;

    invoke-direct {v4}, Lorg/mozilla/intl/chardet/nsUCS2BEVerifier;-><init>()V

    aput-object v4, v2, v3

    const/16 v3, 0x9

    new-instance v4, Lorg/mozilla/intl/chardet/nsUCS2LEVerifier;

    invoke-direct {v4}, Lorg/mozilla/intl/chardet/nsUCS2LEVerifier;-><init>()V

    aput-object v4, v2, v3

    iput-object v2, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mVerifier:[Lorg/mozilla/intl/chardet/nsVerifier;

    .line 415
    const/16 v2, 0xa

    new-array v2, v2, [Lorg/mozilla/intl/chardet/nsEUCStatistics;

    aput-object v5, v2, v7

    new-instance v3, Lorg/mozilla/intl/chardet/GB2312Statistics;

    invoke-direct {v3}, Lorg/mozilla/intl/chardet/GB2312Statistics;-><init>()V

    aput-object v3, v2, v6

    aput-object v5, v2, v8

    new-instance v3, Lorg/mozilla/intl/chardet/Big5Statistics;

    invoke-direct {v3}, Lorg/mozilla/intl/chardet/Big5Statistics;-><init>()V

    aput-object v3, v2, v9

    const/4 v3, 0x4

    aput-object v5, v2, v3

    const/4 v3, 0x5

    aput-object v5, v2, v3

    const/4 v3, 0x6

    new-instance v4, Lorg/mozilla/intl/chardet/EUCTWStatistics;

    invoke-direct {v4}, Lorg/mozilla/intl/chardet/EUCTWStatistics;-><init>()V

    aput-object v4, v2, v3

    const/4 v3, 0x7

    aput-object v5, v2, v3

    const/16 v3, 0x8

    aput-object v5, v2, v3

    const/16 v3, 0x9

    aput-object v5, v2, v3

    iput-object v2, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mStatisticsData:[Lorg/mozilla/intl/chardet/nsEUCStatistics;

    goto/16 :goto_1

    .line 445
    :cond_6
    if-nez v0, :cond_0

    .line 449
    const/16 v2, 0xf

    new-array v2, v2, [Lorg/mozilla/intl/chardet/nsVerifier;

    new-instance v3, Lorg/mozilla/intl/chardet/nsUTF8Verifier;

    invoke-direct {v3}, Lorg/mozilla/intl/chardet/nsUTF8Verifier;-><init>()V

    aput-object v3, v2, v7

    new-instance v3, Lorg/mozilla/intl/chardet/nsSJISVerifier;

    invoke-direct {v3}, Lorg/mozilla/intl/chardet/nsSJISVerifier;-><init>()V

    aput-object v3, v2, v6

    new-instance v3, Lorg/mozilla/intl/chardet/nsEUCJPVerifier;

    invoke-direct {v3}, Lorg/mozilla/intl/chardet/nsEUCJPVerifier;-><init>()V

    aput-object v3, v2, v8

    new-instance v3, Lorg/mozilla/intl/chardet/nsISO2022JPVerifier;

    invoke-direct {v3}, Lorg/mozilla/intl/chardet/nsISO2022JPVerifier;-><init>()V

    aput-object v3, v2, v9

    const/4 v3, 0x4

    new-instance v4, Lorg/mozilla/intl/chardet/nsEUCKRVerifier;

    invoke-direct {v4}, Lorg/mozilla/intl/chardet/nsEUCKRVerifier;-><init>()V

    aput-object v4, v2, v3

    const/4 v3, 0x5

    new-instance v4, Lorg/mozilla/intl/chardet/nsISO2022KRVerifier;

    invoke-direct {v4}, Lorg/mozilla/intl/chardet/nsISO2022KRVerifier;-><init>()V

    aput-object v4, v2, v3

    const/4 v3, 0x6

    new-instance v4, Lorg/mozilla/intl/chardet/nsBIG5Verifier;

    invoke-direct {v4}, Lorg/mozilla/intl/chardet/nsBIG5Verifier;-><init>()V

    aput-object v4, v2, v3

    const/4 v3, 0x7

    new-instance v4, Lorg/mozilla/intl/chardet/nsEUCTWVerifier;

    invoke-direct {v4}, Lorg/mozilla/intl/chardet/nsEUCTWVerifier;-><init>()V

    aput-object v4, v2, v3

    const/16 v3, 0x8

    new-instance v4, Lorg/mozilla/intl/chardet/nsGB2312Verifier;

    invoke-direct {v4}, Lorg/mozilla/intl/chardet/nsGB2312Verifier;-><init>()V

    aput-object v4, v2, v3

    const/16 v3, 0x9

    new-instance v4, Lorg/mozilla/intl/chardet/nsGB18030Verifier;

    invoke-direct {v4}, Lorg/mozilla/intl/chardet/nsGB18030Verifier;-><init>()V

    aput-object v4, v2, v3

    const/16 v3, 0xa

    new-instance v4, Lorg/mozilla/intl/chardet/nsISO2022CNVerifier;

    invoke-direct {v4}, Lorg/mozilla/intl/chardet/nsISO2022CNVerifier;-><init>()V

    aput-object v4, v2, v3

    const/16 v3, 0xb

    new-instance v4, Lorg/mozilla/intl/chardet/nsHZVerifier;

    invoke-direct {v4}, Lorg/mozilla/intl/chardet/nsHZVerifier;-><init>()V

    aput-object v4, v2, v3

    const/16 v3, 0xc

    new-instance v4, Lorg/mozilla/intl/chardet/nsCP1252Verifier;

    invoke-direct {v4}, Lorg/mozilla/intl/chardet/nsCP1252Verifier;-><init>()V

    aput-object v4, v2, v3

    const/16 v3, 0xd

    new-instance v4, Lorg/mozilla/intl/chardet/nsUCS2BEVerifier;

    invoke-direct {v4}, Lorg/mozilla/intl/chardet/nsUCS2BEVerifier;-><init>()V

    aput-object v4, v2, v3

    const/16 v3, 0xe

    new-instance v4, Lorg/mozilla/intl/chardet/nsUCS2LEVerifier;

    invoke-direct {v4}, Lorg/mozilla/intl/chardet/nsUCS2LEVerifier;-><init>()V

    aput-object v4, v2, v3

    iput-object v2, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mVerifier:[Lorg/mozilla/intl/chardet/nsVerifier;

    .line 485
    const/16 v2, 0xf

    new-array v2, v2, [Lorg/mozilla/intl/chardet/nsEUCStatistics;

    aput-object v5, v2, v7

    aput-object v5, v2, v6

    new-instance v3, Lorg/mozilla/intl/chardet/EUCJPStatistics;

    invoke-direct {v3}, Lorg/mozilla/intl/chardet/EUCJPStatistics;-><init>()V

    aput-object v3, v2, v8

    aput-object v5, v2, v9

    const/4 v3, 0x4

    new-instance v4, Lorg/mozilla/intl/chardet/EUCKRStatistics;

    invoke-direct {v4}, Lorg/mozilla/intl/chardet/EUCKRStatistics;-><init>()V

    aput-object v4, v2, v3

    const/4 v3, 0x5

    aput-object v5, v2, v3

    const/4 v3, 0x6

    new-instance v4, Lorg/mozilla/intl/chardet/Big5Statistics;

    invoke-direct {v4}, Lorg/mozilla/intl/chardet/Big5Statistics;-><init>()V

    aput-object v4, v2, v3

    const/4 v3, 0x7

    new-instance v4, Lorg/mozilla/intl/chardet/EUCTWStatistics;

    invoke-direct {v4}, Lorg/mozilla/intl/chardet/EUCTWStatistics;-><init>()V

    aput-object v4, v2, v3

    const/16 v3, 0x8

    new-instance v4, Lorg/mozilla/intl/chardet/GB2312Statistics;

    invoke-direct {v4}, Lorg/mozilla/intl/chardet/GB2312Statistics;-><init>()V

    aput-object v4, v2, v3

    const/16 v3, 0x9

    aput-object v5, v2, v3

    const/16 v3, 0xa

    aput-object v5, v2, v3

    const/16 v3, 0xb

    aput-object v5, v2, v3

    const/16 v3, 0xc

    aput-object v5, v2, v3

    const/16 v3, 0xd

    aput-object v5, v2, v3

    const/16 v3, 0xe

    aput-object v5, v2, v3

    iput-object v2, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mStatisticsData:[Lorg/mozilla/intl/chardet/nsEUCStatistics;

    goto/16 :goto_1

    :cond_7
    move v2, v7

    .line 523
    goto/16 :goto_2
.end method
