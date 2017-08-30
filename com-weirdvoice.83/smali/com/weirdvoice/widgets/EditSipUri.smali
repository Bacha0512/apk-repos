.class public Lcom/weirdvoice/widgets/EditSipUri;
.super Landroid/widget/LinearLayout;
.source "EditSipUri.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/weirdvoice/widgets/EditSipUri$ToCall;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/LinearLayout;",
        "Landroid/text/TextWatcher;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# static fields
.field protected static final THIS_FILE:Ljava/lang/String; = "EditSipUri"


# instance fields
.field private accountChooserButtonText:Lcom/weirdvoice/widgets/AccountChooserButton;

.field private completeList:Landroid/widget/ListView;

.field private contactsAdapter:Lcom/weirdvoice/utils/contacts/ContactsSearchAdapter;

.field private dialUser:Landroid/widget/AutoCompleteTextView;

.field private domainTextHelper:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x1

    .line 60
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    invoke-virtual {p0, v2}, Lcom/weirdvoice/widgets/EditSipUri;->setGravity(I)V

    .line 62
    invoke-virtual {p0, v2}, Lcom/weirdvoice/widgets/EditSipUri;->setOrientation(I)V

    .line 63
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 64
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f030035

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 66
    const v1, 0x7f0b00c2

    invoke-virtual {p0, v1}, Lcom/weirdvoice/widgets/EditSipUri;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/AutoCompleteTextView;

    iput-object v1, p0, Lcom/weirdvoice/widgets/EditSipUri;->dialUser:Landroid/widget/AutoCompleteTextView;

    .line 67
    const v1, 0x7f0b00c3

    invoke-virtual {p0, v1}, Lcom/weirdvoice/widgets/EditSipUri;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/weirdvoice/widgets/AccountChooserButton;

    iput-object v1, p0, Lcom/weirdvoice/widgets/EditSipUri;->accountChooserButtonText:Lcom/weirdvoice/widgets/AccountChooserButton;

    .line 68
    const v1, 0x7f0b00c4

    invoke-virtual {p0, v1}, Lcom/weirdvoice/widgets/EditSipUri;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/weirdvoice/widgets/EditSipUri;->domainTextHelper:Landroid/widget/TextView;

    .line 69
    const v1, 0x7f0b00a3

    invoke-virtual {p0, v1}, Lcom/weirdvoice/widgets/EditSipUri;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/weirdvoice/widgets/EditSipUri;->completeList:Landroid/widget/ListView;

    .line 72
    iget-object v1, p0, Lcom/weirdvoice/widgets/EditSipUri;->accountChooserButtonText:Lcom/weirdvoice/widgets/AccountChooserButton;

    new-instance v2, Lcom/weirdvoice/widgets/EditSipUri$1;

    invoke-direct {v2, p0}, Lcom/weirdvoice/widgets/EditSipUri$1;-><init>(Lcom/weirdvoice/widgets/EditSipUri;)V

    invoke-virtual {v1, v2}, Lcom/weirdvoice/widgets/AccountChooserButton;->setOnAccountChangeListener(Lcom/weirdvoice/widgets/AccountChooserButton$OnAccountChangeListener;)V

    .line 85
    iget-object v1, p0, Lcom/weirdvoice/widgets/EditSipUri;->dialUser:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1, p0}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 87
    return-void
.end method

.method static synthetic access$0(Lcom/weirdvoice/widgets/EditSipUri;)V
    .locals 0

    .prologue
    .line 151
    invoke-direct {p0}, Lcom/weirdvoice/widgets/EditSipUri;->updateDialTextHelper()V

    return-void
.end method

.method static synthetic access$1(Lcom/weirdvoice/widgets/EditSipUri;)Lcom/weirdvoice/utils/contacts/ContactsSearchAdapter;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/weirdvoice/widgets/EditSipUri;->contactsAdapter:Lcom/weirdvoice/utils/contacts/ContactsSearchAdapter;

    return-object v0
.end method

.method private updateDialTextHelper()V
    .locals 6

    .prologue
    .line 153
    iget-object v2, p0, Lcom/weirdvoice/widgets/EditSipUri;->dialUser:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v2}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 154
    .local v1, "dialUserValue":Ljava/lang/String;
    iget-object v2, p0, Lcom/weirdvoice/widgets/EditSipUri;->contactsAdapter:Lcom/weirdvoice/utils/contacts/ContactsSearchAdapter;

    if-eqz v2, :cond_0

    .line 155
    iget-object v2, p0, Lcom/weirdvoice/widgets/EditSipUri;->contactsAdapter:Lcom/weirdvoice/utils/contacts/ContactsSearchAdapter;

    invoke-virtual {v2, v1}, Lcom/weirdvoice/utils/contacts/ContactsSearchAdapter;->setSelectedText(Ljava/lang/String;)V

    .line 157
    :cond_0
    iget-object v2, p0, Lcom/weirdvoice/widgets/EditSipUri;->accountChooserButtonText:Lcom/weirdvoice/widgets/AccountChooserButton;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/weirdvoice/widgets/AccountChooserButton;->setChangeable(Z)V

    .line 159
    iget-object v2, p0, Lcom/weirdvoice/widgets/EditSipUri;->accountChooserButtonText:Lcom/weirdvoice/widgets/AccountChooserButton;

    invoke-virtual {v2}, Lcom/weirdvoice/widgets/AccountChooserButton;->getSelectedAccount()Lcom/weirdvoice/api/SipProfile;

    move-result-object v0

    .line 160
    .local v0, "acc":Lcom/weirdvoice/api/SipProfile;
    const-string v2, ".*@.*"

    invoke-static {v2, v1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz v0, :cond_1

    .line 161
    iget-wide v2, v0, Lcom/weirdvoice/api/SipProfile;->id:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 162
    iget-object v2, p0, Lcom/weirdvoice/widgets/EditSipUri;->domainTextHelper:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "@"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/weirdvoice/api/SipProfile;->getDefaultDomain()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    :goto_0
    return-void

    .line 164
    :cond_1
    iget-object v2, p0, Lcom/weirdvoice/widgets/EditSipUri;->domainTextHelper:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 220
    invoke-direct {p0}, Lcom/weirdvoice/widgets/EditSipUri;->updateDialTextHelper()V

    .line 221
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/CharSequence;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 211
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/weirdvoice/widgets/EditSipUri;->dialUser:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 229
    return-void
.end method

.method public getSelectedAccount()Lcom/weirdvoice/api/SipProfile;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/weirdvoice/widgets/EditSipUri;->accountChooserButtonText:Lcom/weirdvoice/widgets/AccountChooserButton;

    invoke-virtual {v0}, Lcom/weirdvoice/widgets/AccountChooserButton;->getSelectedAccount()Lcom/weirdvoice/api/SipProfile;

    move-result-object v0

    return-object v0
.end method

.method public getTextField()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/weirdvoice/widgets/EditSipUri;->dialUser:Landroid/widget/AutoCompleteTextView;

    return-object v0
.end method

.method public getValue()Lcom/weirdvoice/widgets/EditSipUri$ToCall;
    .locals 8

    .prologue
    .line 176
    iget-object v4, p0, Lcom/weirdvoice/widgets/EditSipUri;->dialUser:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v4}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    .line 177
    .local v3, "userName":Ljava/lang/String;
    const-string v2, ""

    .line 178
    .local v2, "toCall":Ljava/lang/String;
    const/4 v1, 0x0

    .line 179
    .local v1, "accountToUse":Ljava/lang/Long;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 180
    const/4 v4, 0x0

    .line 202
    :goto_0
    return-object v4

    .line 182
    :cond_0
    const-string v4, "[ \t]"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 183
    iget-object v4, p0, Lcom/weirdvoice/widgets/EditSipUri;->accountChooserButtonText:Lcom/weirdvoice/widgets/AccountChooserButton;

    invoke-virtual {v4}, Lcom/weirdvoice/widgets/AccountChooserButton;->getSelectedAccount()Lcom/weirdvoice/api/SipProfile;

    move-result-object v0

    .line 184
    .local v0, "acc":Lcom/weirdvoice/api/SipProfile;
    if-eqz v0, :cond_4

    .line 185
    iget-wide v4, v0, Lcom/weirdvoice/api/SipProfile;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 187
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-lez v4, :cond_3

    .line 188
    const-string v4, ".*@.*"

    invoke-static {v4, v3}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 189
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "sip:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 202
    :goto_1
    new-instance v4, Lcom/weirdvoice/widgets/EditSipUri$ToCall;

    invoke-direct {v4, p0, v1, v2}, Lcom/weirdvoice/widgets/EditSipUri$ToCall;-><init>(Lcom/weirdvoice/widgets/EditSipUri;Ljava/lang/Long;Ljava/lang/String;)V

    goto :goto_0

    .line 190
    :cond_1
    invoke-virtual {v0}, Lcom/weirdvoice/api/SipProfile;->getDefaultDomain()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 191
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "sip:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "@"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/weirdvoice/api/SipProfile;->getDefaultDomain()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 192
    goto :goto_1

    .line 193
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "sip:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 195
    goto :goto_1

    .line 196
    :cond_3
    move-object v2, v3

    .line 198
    goto :goto_1

    .line 199
    :cond_4
    move-object v2, v3

    goto :goto_1
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 94
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 96
    invoke-virtual {p0}, Lcom/weirdvoice/widgets/EditSipUri;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    :goto_0
    return-void

    .line 100
    :cond_0
    new-instance v0, Lcom/weirdvoice/utils/contacts/ContactsSearchAdapter;

    invoke-virtual {p0}, Lcom/weirdvoice/widgets/EditSipUri;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/weirdvoice/utils/contacts/ContactsSearchAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/weirdvoice/widgets/EditSipUri;->contactsAdapter:Lcom/weirdvoice/utils/contacts/ContactsSearchAdapter;

    .line 101
    iget-object v0, p0, Lcom/weirdvoice/widgets/EditSipUri;->completeList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/weirdvoice/widgets/EditSipUri;->contactsAdapter:Lcom/weirdvoice/utils/contacts/ContactsSearchAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 102
    iget-object v0, p0, Lcom/weirdvoice/widgets/EditSipUri;->completeList:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 113
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 115
    invoke-virtual {p0}, Lcom/weirdvoice/widgets/EditSipUri;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    iget-object v0, p0, Lcom/weirdvoice/widgets/EditSipUri;->contactsAdapter:Lcom/weirdvoice/utils/contacts/ContactsSearchAdapter;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/weirdvoice/widgets/EditSipUri;->contactsAdapter:Lcom/weirdvoice/utils/contacts/ContactsSearchAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/weirdvoice/utils/contacts/ContactsSearchAdapter;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 251
    .local p1, "ad":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 252
    .local v1, "number":Ljava/lang/String;
    iget-object v3, p0, Lcom/weirdvoice/widgets/EditSipUri;->accountChooserButtonText:Lcom/weirdvoice/widgets/AccountChooserButton;

    invoke-virtual {v3}, Lcom/weirdvoice/widgets/AccountChooserButton;->getSelectedAccount()Lcom/weirdvoice/api/SipProfile;

    move-result-object v0

    .line 253
    .local v0, "account":Lcom/weirdvoice/api/SipProfile;
    invoke-virtual {p0}, Lcom/weirdvoice/widgets/EditSipUri;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-wide v4, v0, Lcom/weirdvoice/api/SipProfile;->id:J

    invoke-static {v3, v4, v5, v1}, Lcom/weirdvoice/models/Filter;->rewritePhoneNumber(Landroid/content/Context;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 254
    .local v2, "rewritten":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/weirdvoice/widgets/EditSipUri;->setTextValue(Ljava/lang/String;)V

    .line 255
    const-string v3, "EditSipUri"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Clicked contact "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "newText"    # Ljava/lang/CharSequence;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 215
    invoke-direct {p0}, Lcom/weirdvoice/widgets/EditSipUri;->updateDialTextHelper()V

    .line 216
    return-void
.end method

.method public setShowExternals(Z)V
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 259
    iget-object v0, p0, Lcom/weirdvoice/widgets/EditSipUri;->accountChooserButtonText:Lcom/weirdvoice/widgets/AccountChooserButton;

    invoke-virtual {v0, p1}, Lcom/weirdvoice/widgets/AccountChooserButton;->setShowExternals(Z)V

    .line 260
    return-void
.end method

.method public setTextValue(Ljava/lang/String;)V
    .locals 1
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/weirdvoice/widgets/EditSipUri;->clear()V

    .line 237
    iget-object v0, p0, Lcom/weirdvoice/widgets/EditSipUri;->dialUser:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 238
    return-void
.end method
