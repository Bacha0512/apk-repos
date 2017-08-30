.class public Lcom/weirdvoice/utils/contacts/ContactsSearchAdapter;
.super Landroid/support/v4/widget/CursorAdapter;
.source "ContactsSearchAdapter.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# instance fields
.field alphaIndexer:Landroid/widget/AlphabetIndexer;

.field private boldStyle:Landroid/text/style/CharacterStyle;

.field private currentAccId:J

.field private currentFilter:Ljava/lang/String;

.field private highlightStyle:Landroid/text/style/CharacterStyle;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/support/v4/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 57
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/weirdvoice/utils/contacts/ContactsSearchAdapter;->currentAccId:J

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lcom/weirdvoice/utils/contacts/ContactsSearchAdapter;->currentFilter:Ljava/lang/String;

    .line 60
    new-instance v0, Landroid/text/style/StyleSpan;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    iput-object v0, p0, Lcom/weirdvoice/utils/contacts/ContactsSearchAdapter;->boldStyle:Landroid/text/style/CharacterStyle;

    .line 61
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    const v1, -0xcc4a1b

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v0, p0, Lcom/weirdvoice/utils/contacts/ContactsSearchAdapter;->highlightStyle:Landroid/text/style/CharacterStyle;

    .line 70
    iput-object p1, p0, Lcom/weirdvoice/utils/contacts/ContactsSearchAdapter;->mContext:Landroid/content/Context;

    .line 72
    return-void
.end method

.method private highlightTextViewSearch(Landroid/widget/TextView;)Z
    .locals 6
    .param p1, "tv"    # Landroid/widget/TextView;

    .prologue
    const/16 v5, 0x21

    .line 98
    iget-object v3, p0, Lcom/weirdvoice/utils/contacts/ContactsSearchAdapter;->currentFilter:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 99
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 100
    .local v2, "value":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/weirdvoice/utils/contacts/ContactsSearchAdapter;->currentFilter:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 101
    .local v0, "foundIdx":I
    if-ltz v0, :cond_0

    .line 102
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 103
    .local v1, "spn":Landroid/text/SpannableString;
    iget-object v3, p0, Lcom/weirdvoice/utils/contacts/ContactsSearchAdapter;->boldStyle:Landroid/text/style/CharacterStyle;

    iget-object v4, p0, Lcom/weirdvoice/utils/contacts/ContactsSearchAdapter;->currentFilter:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {v1, v3, v0, v4, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 104
    iget-object v3, p0, Lcom/weirdvoice/utils/contacts/ContactsSearchAdapter;->highlightStyle:Landroid/text/style/CharacterStyle;

    iget-object v4, p0, Lcom/weirdvoice/utils/contacts/ContactsSearchAdapter;->currentFilter:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {v1, v3, v0, v4, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 105
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    const/4 v3, 0x1

    .line 109
    .end local v0    # "foundIdx":I
    .end local v1    # "spn":Landroid/text/SpannableString;
    .end local v2    # "value":Ljava/lang/String;
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 114
    invoke-static {}, Lcom/weirdvoice/utils/contacts/ContactsWrapper;->getInstance()Lcom/weirdvoice/utils/contacts/ContactsWrapper;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/weirdvoice/utils/contacts/ContactsWrapper;->bindContactPhoneView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 115
    const v0, 0x7f0b0073

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/weirdvoice/utils/contacts/ContactsSearchAdapter;->highlightTextViewSearch(Landroid/widget/TextView;)Z

    .line 116
    const v0, 0x7f0b0074

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/weirdvoice/utils/contacts/ContactsSearchAdapter;->highlightTextViewSearch(Landroid/widget/TextView;)Z

    .line 117
    return-void
.end method

.method public final convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .locals 6
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 134
    invoke-static {}, Lcom/weirdvoice/utils/contacts/ContactsWrapper;->getInstance()Lcom/weirdvoice/utils/contacts/ContactsWrapper;

    move-result-object v3

    iget-object v4, p0, Lcom/weirdvoice/utils/contacts/ContactsSearchAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, p1}, Lcom/weirdvoice/utils/contacts/ContactsWrapper;->transformToSipUri(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 135
    .local v1, "number":Ljava/lang/CharSequence;
    invoke-static {}, Lcom/weirdvoice/utils/contacts/ContactsWrapper;->getInstance()Lcom/weirdvoice/utils/contacts/ContactsWrapper;

    move-result-object v3

    iget-object v4, p0, Lcom/weirdvoice/utils/contacts/ContactsSearchAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, p1}, Lcom/weirdvoice/utils/contacts/ContactsWrapper;->isExternalPhoneNumber(Landroid/content/Context;Landroid/database/Cursor;)Z

    move-result v0

    .line 136
    .local v0, "isExternalPhone":Z
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v0, :cond_0

    .line 137
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 138
    .local v2, "stripNbr":Ljava/lang/String;
    iget-object v3, p0, Lcom/weirdvoice/utils/contacts/ContactsSearchAdapter;->mContext:Landroid/content/Context;

    iget-wide v4, p0, Lcom/weirdvoice/utils/contacts/ContactsSearchAdapter;->currentAccId:J

    invoke-static {v3, v4, v5, v2}, Lcom/weirdvoice/models/Filter;->rewritePhoneNumber(Landroid/content/Context;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 140
    .end local v1    # "number":Ljava/lang/CharSequence;
    .end local v2    # "stripNbr":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method public getPositionForSection(I)I
    .locals 1
    .param p1, "section"    # I

    .prologue
    .line 145
    iget-object v0, p0, Lcom/weirdvoice/utils/contacts/ContactsSearchAdapter;->alphaIndexer:Landroid/widget/AlphabetIndexer;

    if-eqz v0, :cond_0

    .line 147
    :try_start_0
    iget-object v0, p0, Lcom/weirdvoice/utils/contacts/ContactsSearchAdapter;->alphaIndexer:Landroid/widget/AlphabetIndexer;

    invoke-virtual {v0, p1}, Landroid/widget/AlphabetIndexer;->getPositionForSection(I)I
    :try_end_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 152
    :goto_0
    return v0

    .line 148
    :catch_0
    move-exception v0

    .line 152
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSectionForPosition(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 157
    iget-object v0, p0, Lcom/weirdvoice/utils/contacts/ContactsSearchAdapter;->alphaIndexer:Landroid/widget/AlphabetIndexer;

    if-eqz v0, :cond_0

    .line 159
    :try_start_0
    iget-object v0, p0, Lcom/weirdvoice/utils/contacts/ContactsSearchAdapter;->alphaIndexer:Landroid/widget/AlphabetIndexer;

    invoke-virtual {v0, p1}, Landroid/widget/AlphabetIndexer;->getSectionForPosition(I)I
    :try_end_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 164
    :goto_0
    return v0

    .line 160
    :catch_0
    move-exception v0

    .line 164
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/weirdvoice/utils/contacts/ContactsSearchAdapter;->alphaIndexer:Landroid/widget/AlphabetIndexer;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/weirdvoice/utils/contacts/ContactsSearchAdapter;->alphaIndexer:Landroid/widget/AlphabetIndexer;

    invoke-virtual {v0}, Landroid/widget/AlphabetIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v0

    .line 172
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 93
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 94
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f030055

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 4
    .param p1, "constraint"    # Ljava/lang/CharSequence;

    .prologue
    .line 121
    invoke-static {}, Lcom/weirdvoice/utils/contacts/ContactsWrapper;->getInstance()Lcom/weirdvoice/utils/contacts/ContactsWrapper;

    move-result-object v1

    iget-object v2, p0, Lcom/weirdvoice/utils/contacts/ContactsSearchAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, p1}, Lcom/weirdvoice/utils/contacts/ContactsWrapper;->getContactsPhones(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/database/Cursor;

    move-result-object v0

    .line 123
    .local v0, "c":Landroid/database/Cursor;
    iget-object v1, p0, Lcom/weirdvoice/utils/contacts/ContactsSearchAdapter;->alphaIndexer:Landroid/widget/AlphabetIndexer;

    if-nez v1, :cond_0

    .line 124
    new-instance v1, Landroid/widget/AlphabetIndexer;

    invoke-static {}, Lcom/weirdvoice/utils/contacts/ContactsWrapper;->getInstance()Lcom/weirdvoice/utils/contacts/ContactsWrapper;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/weirdvoice/utils/contacts/ContactsWrapper;->getContactIndexableColumnIndex(Landroid/database/Cursor;)I

    move-result v2

    .line 125
    const-string v3, " ABCDEFGHIJKLMNOPQRSTUVWXYZ"

    invoke-direct {v1, v0, v2, v3}, Landroid/widget/AlphabetIndexer;-><init>(Landroid/database/Cursor;ILjava/lang/CharSequence;)V

    .line 124
    iput-object v1, p0, Lcom/weirdvoice/utils/contacts/ContactsSearchAdapter;->alphaIndexer:Landroid/widget/AlphabetIndexer;

    .line 129
    :goto_0
    return-object v0

    .line 127
    :cond_0
    iget-object v1, p0, Lcom/weirdvoice/utils/contacts/ContactsSearchAdapter;->alphaIndexer:Landroid/widget/AlphabetIndexer;

    invoke-virtual {v1, v0}, Landroid/widget/AlphabetIndexer;->setCursor(Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method public final setSelectedAccount(J)V
    .locals 1
    .param p1, "accId"    # J

    .prologue
    .line 75
    iput-wide p1, p0, Lcom/weirdvoice/utils/contacts/ContactsSearchAdapter;->currentAccId:J

    .line 76
    return-void
.end method

.method public final setSelectedText(Ljava/lang/String;)V
    .locals 2
    .param p1, "txt"    # Ljava/lang/String;

    .prologue
    .line 78
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 79
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/weirdvoice/utils/contacts/ContactsSearchAdapter;->currentFilter:Ljava/lang/String;

    .line 83
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_2

    .line 84
    :cond_0
    invoke-virtual {p0}, Lcom/weirdvoice/utils/contacts/ContactsSearchAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 88
    :goto_1
    return-void

    .line 81
    :cond_1
    const-string v0, ""

    iput-object v0, p0, Lcom/weirdvoice/utils/contacts/ContactsSearchAdapter;->currentFilter:Ljava/lang/String;

    goto :goto_0

    .line 86
    :cond_2
    const-string v0, ""

    iput-object v0, p0, Lcom/weirdvoice/utils/contacts/ContactsSearchAdapter;->currentFilter:Ljava/lang/String;

    goto :goto_1
.end method
