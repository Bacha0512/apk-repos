.class public Lcom/weirdvoice/ui/messages/ConversationsAdapter;
.super Landroid/support/v4/widget/SimpleCursorAdapter;
.source "ConversationsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/weirdvoice/ui/messages/ConversationsAdapter$ConversationListItemViews;
    }
.end annotation


# static fields
.field private static final STYLE_BOLD:Landroid/text/style/StyleSpan;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 146
    new-instance v0, Landroid/text/style/StyleSpan;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    sput-object v0, Lcom/weirdvoice/ui/messages/ConversationsAdapter;->STYLE_BOLD:Landroid/text/style/StyleSpan;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "c"    # Landroid/database/Cursor;

    .prologue
    const/4 v1, 0x1

    const/4 v6, 0x0

    .line 49
    const v2, 0x7f03002a

    new-array v4, v1, [Ljava/lang/String;

    .line 50
    const-string v0, "body"

    aput-object v0, v4, v6

    .line 52
    new-array v5, v1, [I

    .line 53
    const v0, 0x7f0b0083

    aput v0, v5, v6

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    .line 54
    invoke-direct/range {v0 .. v6}, Landroid/support/v4/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V

    .line 55
    iput-object p1, p0, Lcom/weirdvoice/ui/messages/ConversationsAdapter;->mContext:Landroid/content/Context;

    .line 56
    return-void
.end method

.method private formatMessage(Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .locals 9
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 149
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 157
    .local v0, "buf":Landroid/text/SpannableStringBuilder;
    const-string v5, "full_sender"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 158
    .local v4, "remoteContactFull":Ljava/lang/String;
    iget-object v5, p0, Lcom/weirdvoice/ui/messages/ConversationsAdapter;->mContext:Landroid/content/Context;

    invoke-static {v5, v4}, Lcom/weirdvoice/models/CallerInfo;->getCallerInfoFromSipUri(Landroid/content/Context;Ljava/lang/String;)Lcom/weirdvoice/models/CallerInfo;

    move-result-object v1

    .line 159
    .local v1, "callerInfo":Lcom/weirdvoice/models/CallerInfo;
    if-eqz v1, :cond_2

    iget-boolean v5, v1, Lcom/weirdvoice/models/CallerInfo;->contactExists:Z

    if-eqz v5, :cond_2

    .line 160
    iget-object v5, v1, Lcom/weirdvoice/models/CallerInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 161
    const-string v5, " / "

    invoke-virtual {v0, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 162
    invoke-static {v4}, Lcom/weirdvoice/api/SipUri;->getDisplayedSimpleContact(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 167
    :goto_0
    const-string v5, "counter"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 168
    .local v2, "counter":I
    const/4 v5, 0x1

    if-le v2, v5, :cond_0

    .line 169
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " ("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 173
    :cond_0
    const-string v5, "read"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 175
    .local v3, "read":I
    if-nez v3, :cond_1

    .line 176
    sget-object v5, Lcom/weirdvoice/ui/messages/ConversationsAdapter;->STYLE_BOLD:Landroid/text/style/StyleSpan;

    const/4 v6, 0x0

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    .line 177
    const/16 v8, 0x11

    .line 176
    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 179
    :cond_1
    return-object v0

    .line 164
    .end local v2    # "counter":I
    .end local v3    # "read":I
    :cond_2
    invoke-static {v4}, Lcom/weirdvoice/api/SipUri;->getDisplayedSimpleContact(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 16
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 91
    invoke-super/range {p0 .. p3}, Landroid/support/v4/widget/SimpleCursorAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 93
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/weirdvoice/ui/messages/ConversationsAdapter$ConversationListItemViews;

    .line 94
    .local v13, "tagView":Lcom/weirdvoice/ui/messages/ConversationsAdapter$ConversationListItemViews;
    const-string v4, "sender"

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 95
    .local v11, "nbr":Ljava/lang/String;
    const-string v4, "full_sender"

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 96
    .local v9, "fromFull":Ljava/lang/String;
    const-string v4, "receiver"

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 99
    .local v14, "to_number":Ljava/lang/String;
    const-string v4, "date"

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 102
    .local v2, "date":J
    iput-object v9, v13, Lcom/weirdvoice/ui/messages/ConversationsAdapter$ConversationListItemViews;->fromFull:Ljava/lang/String;

    .line 103
    iput-object v14, v13, Lcom/weirdvoice/ui/messages/ConversationsAdapter$ConversationListItemViews;->to:Ljava/lang/String;

    .line 104
    iput-object v11, v13, Lcom/weirdvoice/ui/messages/ConversationsAdapter$ConversationListItemViews;->from:Ljava/lang/String;

    .line 105
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v4

    iput v4, v13, Lcom/weirdvoice/ui/messages/ConversationsAdapter$ConversationListItemViews;->position:I

    .line 115
    const-string v4, "full_sender"

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 116
    .local v12, "number":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/weirdvoice/ui/messages/ConversationsAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4, v12}, Lcom/weirdvoice/models/CallerInfo;->getCallerInfoFromSipUri(Landroid/content/Context;Ljava/lang/String;)Lcom/weirdvoice/models/CallerInfo;

    move-result-object v10

    .line 128
    .local v10, "info":Lcom/weirdvoice/models/CallerInfo;
    iget-object v4, v13, Lcom/weirdvoice/ui/messages/ConversationsAdapter$ConversationListItemViews;->quickContactView:Lcom/weirdvoice/widgets/contactbadge/QuickContactBadge;

    iget-object v5, v10, Lcom/weirdvoice/models/CallerInfo;->contactContentUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Lcom/weirdvoice/widgets/contactbadge/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 129
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/weirdvoice/ui/messages/ConversationsAdapter;->mContext:Landroid/content/Context;

    .line 130
    iget-object v5, v13, Lcom/weirdvoice/ui/messages/ConversationsAdapter$ConversationListItemViews;->quickContactView:Lcom/weirdvoice/widgets/contactbadge/QuickContactBadge;

    invoke-virtual {v5}, Lcom/weirdvoice/widgets/contactbadge/QuickContactBadge;->getImageView()Landroid/widget/ImageView;

    move-result-object v5

    .line 132
    const v6, 0x7f020189

    .line 129
    invoke-static {v4, v5, v10, v6}, Lcom/weirdvoice/utils/ContactsAsyncHelper;->updateImageViewWithContactPhotoAsync(Landroid/content/Context;Landroid/widget/ImageView;Lcom/weirdvoice/models/CallerInfo;I)V

    .line 135
    iget-object v4, v13, Lcom/weirdvoice/ui/messages/ConversationsAdapter$ConversationListItemViews;->fromView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/weirdvoice/ui/messages/ConversationsAdapter;->formatMessage(Landroid/database/Cursor;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    const/high16 v8, 0x40000

    .line 140
    .local v8, "flags":I
    iget-object v15, v13, Lcom/weirdvoice/ui/messages/ConversationsAdapter$ConversationListItemViews;->dateView:Landroid/widget/TextView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/32 v6, 0xea60

    invoke-static/range {v2 .. v8}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v15, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    return-void
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 78
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/widget/SimpleCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 79
    .local v1, "view":Landroid/view/View;
    new-instance v0, Lcom/weirdvoice/ui/messages/ConversationsAdapter$ConversationListItemViews;

    invoke-direct {v0}, Lcom/weirdvoice/ui/messages/ConversationsAdapter$ConversationListItemViews;-><init>()V

    .line 80
    .local v0, "tagView":Lcom/weirdvoice/ui/messages/ConversationsAdapter$ConversationListItemViews;
    const v2, 0x7f0b008c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/weirdvoice/ui/messages/ConversationsAdapter$ConversationListItemViews;->fromView:Landroid/widget/TextView;

    .line 81
    const v2, 0x7f0b006e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/weirdvoice/ui/messages/ConversationsAdapter$ConversationListItemViews;->dateView:Landroid/widget/TextView;

    .line 82
    const v2, 0x7f0b0071

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/weirdvoice/widgets/contactbadge/QuickContactBadge;

    iput-object v2, v0, Lcom/weirdvoice/ui/messages/ConversationsAdapter$ConversationListItemViews;->quickContactView:Lcom/weirdvoice/widgets/contactbadge/QuickContactBadge;

    .line 83
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 86
    return-object v1
.end method
