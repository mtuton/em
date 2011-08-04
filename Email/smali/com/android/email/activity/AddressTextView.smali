.class Lcom/android/email/activity/AddressTextView;
.super Landroid/widget/MultiAutoCompleteTextView;
.source "AddressTextView.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/AddressTextView$1;,
        Lcom/android/email/activity/AddressTextView$ForwardValidator;
    }
.end annotation


# instance fields
.field private mInternalValidator:Lcom/android/email/activity/AddressTextView$ForwardValidator;

.field private mIsValid:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Landroid/widget/MultiAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/AddressTextView;->mIsValid:Z

    .line 55
    new-instance v0, Lcom/android/email/activity/AddressTextView$ForwardValidator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/email/activity/AddressTextView$ForwardValidator;-><init>(Lcom/android/email/activity/AddressTextView;Lcom/android/email/activity/AddressTextView$1;)V

    iput-object v0, p0, Lcom/android/email/activity/AddressTextView;->mInternalValidator:Lcom/android/email/activity/AddressTextView$ForwardValidator;

    .line 59
    iget-object v0, p0, Lcom/android/email/activity/AddressTextView;->mInternalValidator:Lcom/android/email/activity/AddressTextView$ForwardValidator;

    invoke-super {p0, v0}, Landroid/widget/MultiAutoCompleteTextView;->setValidator(Landroid/widget/AutoCompleteTextView$Validator;)V

    .line 60
    invoke-virtual {p0, p0}, Lcom/android/email/activity/AddressTextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 61
    return-void
.end method

.method static synthetic access$002(Lcom/android/email/activity/AddressTextView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/android/email/activity/AddressTextView;->mIsValid:Z

    return p1
.end method

.method private markError(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 93
    if-eqz p1, :cond_0

    .line 94
    invoke-virtual {p0}, Lcom/android/email/activity/AddressTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f080067

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/email/activity/AddressTextView;->setError(Ljava/lang/CharSequence;)V

    .line 98
    :goto_0
    return-void

    .line 96
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/email/activity/AddressTextView;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 3
    .parameter "outAttrs"

    .prologue
    .line 102
    invoke-super {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 104
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const v2, 0x2000f

    and-int/2addr v1, v2

    const v2, 0x20001

    if-ne v1, v2, :cond_0

    .line 109
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const v2, -0x40000001

    and-int/2addr v1, v2

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 110
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/lit8 v1, v1, 0x5

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 114
    :cond_0
    return-object v0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3
    .parameter "v"

    .prologue
    .line 130
    const/4 v0, 0x0

    .line 132
    .local v0, ret:Z
    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-nez v1, :cond_0

    .line 133
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 135
    const-wide/16 v1, 0xc8

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-nez v1, :cond_1

    .line 140
    const/4 v0, 0x1

    .line 146
    :goto_1
    return v0

    .line 143
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 136
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public performValidation()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 70
    iput-boolean v1, p0, Lcom/android/email/activity/AddressTextView;->mIsValid:Z

    .line 71
    invoke-super {p0}, Landroid/widget/MultiAutoCompleteTextView;->performValidation()V

    .line 72
    iget-boolean v0, p0, Lcom/android/email/activity/AddressTextView;->mIsValid:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/email/activity/AddressTextView;->markError(Z)V

    .line 73
    return-void

    .line 72
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected replaceText(Ljava/lang/CharSequence;)V
    .locals 3
    .parameter "text"

    .prologue
    .line 78
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/email/activity/AddressTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0802ce

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    :goto_0
    return-void

    .line 87
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;->replaceText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
    .locals 3
    .parameter "where"

    .prologue
    .line 119
    invoke-super {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 120
    invoke-virtual {p0}, Lcom/android/email/activity/AddressTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 121
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 123
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 125
    :cond_0
    return-void
.end method

.method public setValidator(Landroid/widget/AutoCompleteTextView$Validator;)V
    .locals 1
    .parameter "validator"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/email/activity/AddressTextView;->mInternalValidator:Lcom/android/email/activity/AddressTextView$ForwardValidator;

    invoke-virtual {v0, p1}, Lcom/android/email/activity/AddressTextView$ForwardValidator;->setValidator(Landroid/widget/AutoCompleteTextView$Validator;)V

    .line 66
    return-void
.end method
