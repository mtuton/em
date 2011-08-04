.class public Lcom/android/email/activity/SearchActivity$TextViewSnippet;
.super Landroid/widget/TextView;
.source "SearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/SearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextViewSnippet"
.end annotation


# static fields
.field private static sEllipsis:Ljava/lang/String;

.field private static sTypefaceHighlight:I


# instance fields
.field private mFullText:Ljava/lang/String;

.field private mTargetString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 92
    const-string v0, "\u2026"

    sput-object v0, Lcom/android/email/activity/SearchActivity$TextViewSnippet;->sEllipsis:Ljava/lang/String;

    .line 94
    const/4 v0, 0x1

    sput v0, Lcom/android/email/activity/SearchActivity$TextViewSnippet;->sTypefaceHighlight:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 104
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 105
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 100
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 108
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 109
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 28
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/SearchActivity$TextViewSnippet;->mFullText:Ljava/lang/String;

    move-object/from16 v24, v0

    if-eqz v24, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/SearchActivity$TextViewSnippet;->mTargetString:Ljava/lang/String;

    move-object/from16 v24, v0

    if-nez v24, :cond_1

    .line 119
    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/widget/TextView;->onLayout(ZIIII)V

    .line 196
    :goto_0
    return-void

    .line 122
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/SearchActivity$TextViewSnippet;->mFullText:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    .line 123
    .local v9, fullTextLower:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/SearchActivity$TextViewSnippet;->mTargetString:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v21

    .line 125
    .local v21, targetStringLower:Ljava/lang/String;
    move-object v0, v9

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v20

    .line 126
    .local v20, startPos:I
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v14

    .line 127
    .local v14, searchStringLength:I
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v5

    .line 129
    .local v5, bodyLength:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/SearchActivity$TextViewSnippet;->getPaint()Landroid/text/TextPaint;

    move-result-object v23

    .line 131
    .local v23, tp:Landroid/text/TextPaint;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/SearchActivity$TextViewSnippet;->mTargetString:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v15

    .line 132
    .local v15, searchStringWidth:F
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/SearchActivity$TextViewSnippet;->getWidth()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v22, v0

    .line 134
    .local v22, textFieldWidth:F
    const/16 v16, 0x0

    .line 135
    .local v16, snippetString:Ljava/lang/String;
    cmpl-float v24, v15, v22

    if-lez v24, :cond_4

    .line 136
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/SearchActivity$TextViewSnippet;->mFullText:Ljava/lang/String;

    move-object/from16 v24, v0

    add-int v25, v20, v14

    move-object/from16 v0, v24

    move/from16 v1, v20

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    .line 177
    :cond_2
    if-eqz v16, :cond_3

    .line 179
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v17

    .line 180
    .local v17, snippetStringLower:Ljava/lang/String;
    new-instance v18, Landroid/text/SpannableString;

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 181
    .local v18, spannable:Landroid/text/SpannableString;
    const/16 v19, 0x0

    .line 183
    .local v19, start:I
    :goto_1
    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v10

    .line 184
    .local v10, index:I
    const/16 v24, -0x1

    move v0, v10

    move/from16 v1, v24

    if-ne v0, v1, :cond_8

    .line 191
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/email/activity/SearchActivity$TextViewSnippet;->setText(Ljava/lang/CharSequence;)V

    .line 195
    .end local v10           #index:I
    .end local v17           #snippetStringLower:Ljava/lang/String;
    .end local v18           #spannable:Landroid/text/SpannableString;
    .end local v19           #start:I
    :cond_3
    invoke-super/range {p0 .. p5}, Landroid/widget/TextView;->onLayout(ZIIII)V

    goto :goto_0

    .line 138
    :cond_4
    sget-object v24, Lcom/android/email/activity/SearchActivity$TextViewSnippet;->sEllipsis:Ljava/lang/String;

    invoke-virtual/range {v23 .. v24}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v7

    .line 139
    .local v7, ellipsisWidth:F
    const/high16 v24, 0x4000

    mul-float v24, v24, v7

    sub-float v22, v22, v24

    .line 141
    const/4 v13, -0x1

    .line 142
    .local v13, offset:I
    const/16 v19, -0x1

    .line 143
    .restart local v19       #start:I
    const/4 v8, -0x1

    .line 149
    .local v8, end:I
    :goto_2
    add-int/lit8 v13, v13, 0x1

    .line 151
    const/16 v24, 0x0

    sub-int v25, v20, v13

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 152
    .local v12, newstart:I
    add-int v24, v20, v14

    add-int v24, v24, v13

    move v0, v5

    move/from16 v1, v24

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 154
    .local v11, newend:I
    move v0, v12

    move/from16 v1, v19

    if-ne v0, v1, :cond_5

    if-eq v11, v8, :cond_2

    .line 158
    :cond_5
    move/from16 v19, v12

    .line 159
    move v8, v11

    .line 163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/SearchActivity$TextViewSnippet;->mFullText:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v19

    move v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 164
    .local v6, candidate:Ljava/lang/String;
    move-object/from16 v0, v23

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v24

    cmpl-float v24, v24, v22

    if-gtz v24, :cond_2

    .line 170
    const-string v24, "%s%s%s"

    const/16 v25, 0x3

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    if-nez v19, :cond_6

    const-string v27, ""

    :goto_3
    aput-object v27, v25, v26

    const/16 v26, 0x1

    aput-object v6, v25, v26

    const/16 v26, 0x2

    if-ne v8, v5, :cond_7

    const-string v27, ""

    :goto_4
    aput-object v27, v25, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .line 175
    goto :goto_2

    .line 170
    :cond_6
    sget-object v27, Lcom/android/email/activity/SearchActivity$TextViewSnippet;->sEllipsis:Ljava/lang/String;

    goto :goto_3

    :cond_7
    sget-object v27, Lcom/android/email/activity/SearchActivity$TextViewSnippet;->sEllipsis:Ljava/lang/String;

    goto :goto_4

    .line 188
    .end local v6           #candidate:Ljava/lang/String;
    .end local v7           #ellipsisWidth:F
    .end local v8           #end:I
    .end local v11           #newend:I
    .end local v12           #newstart:I
    .end local v13           #offset:I
    .restart local v10       #index:I
    .restart local v17       #snippetStringLower:Ljava/lang/String;
    .restart local v18       #spannable:Landroid/text/SpannableString;
    :cond_8
    new-instance v24, Landroid/text/style/StyleSpan;

    sget v25, Lcom/android/email/activity/SearchActivity$TextViewSnippet;->sTypefaceHighlight:I

    invoke-direct/range {v24 .. v25}, Landroid/text/style/StyleSpan;-><init>(I)V

    add-int v25, v10, v14

    const/16 v26, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    move v2, v10

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 189
    add-int v19, v10, v14

    .line 190
    goto/16 :goto_1
.end method

.method public setText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "fullText"
    .parameter "target"

    .prologue
    .line 199
    if-nez p1, :cond_0

    .line 200
    const-string p1, ""

    .line 201
    :cond_0
    if-nez p2, :cond_1

    .line 202
    const-string p2, ""

    .line 204
    :cond_1
    iput-object p1, p0, Lcom/android/email/activity/SearchActivity$TextViewSnippet;->mFullText:Ljava/lang/String;

    .line 205
    iput-object p2, p0, Lcom/android/email/activity/SearchActivity$TextViewSnippet;->mTargetString:Ljava/lang/String;

    .line 206
    invoke-virtual {p0}, Lcom/android/email/activity/SearchActivity$TextViewSnippet;->requestLayout()V

    .line 207
    return-void
.end method
