.class public Lorg/abtollc/api/SipMessage;
.super Ljava/lang/Object;
.source "SipMessage.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/abtollc/api/SipMessage;",
        ">;"
    }
.end annotation


# static fields
.field public static final FIELD_BODY:Ljava/lang/String; = "body"

.field public static final FIELD_CONTACT:Ljava/lang/String; = "contact"

.field public static final FIELD_DATE:Ljava/lang/String; = "date"

.field public static final FIELD_FROM:Ljava/lang/String; = "sender"

.field public static final FIELD_FROM_FULL:Ljava/lang/String; = "full_sender"

.field public static final FIELD_ID:Ljava/lang/String; = "id"

.field public static final FIELD_MIME_TYPE:Ljava/lang/String; = "mime_type"

.field public static final FIELD_READ:Ljava/lang/String; = "read"

.field public static final FIELD_STATUS:Ljava/lang/String; = "status"

.field public static final FIELD_TO:Ljava/lang/String; = "receiver"

.field public static final FIELD_TYPE:Ljava/lang/String; = "type"

.field public static final MESSAGES_TABLE_NAME:Ljava/lang/String; = "messages"

.field public static final MESSAGE_CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.abtollc.message"

.field public static final MESSAGE_CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.abtollc.message"

.field public static final MESSAGE_ID_URI_BASE:Landroid/net/Uri;

.field public static final MESSAGE_TYPE_FAILED:I = 0x5

.field public static final MESSAGE_TYPE_INBOX:I = 0x1

.field public static final MESSAGE_TYPE_QUEUED:I = 0x6

.field public static final MESSAGE_TYPE_SENT:I = 0x2

.field public static final MESSAGE_URI:Landroid/net/Uri;

.field public static final SELF:Ljava/lang/String; = "SELF"

.field public static final STATUS_NONE:I = -0x1

.field public static final THREAD_ALIAS:Ljava/lang/String; = "thread"

.field public static final THREAD_ID_URI_BASE:Landroid/net/Uri;

.field public static final THREAD_URI:Landroid/net/Uri;


# instance fields
.field private body:Ljava/lang/String;

.field private contact:Ljava/lang/String;

.field private date:J

.field private from:Ljava/lang/String;

.field private fullFrom:Ljava/lang/String;

.field private id:J

.field private mimeType:Ljava/lang/String;

.field private read:Z

.field private status:I

.field private to:Ljava/lang/String;

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 119
    const-string v0, "content://org.abtollc.db/messages"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lorg/abtollc/api/SipMessage;->MESSAGE_URI:Landroid/net/Uri;

    .line 127
    const-string v0, "content://org.abtollc.db/messages/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lorg/abtollc/api/SipMessage;->MESSAGE_ID_URI_BASE:Landroid/net/Uri;

    .line 137
    const-string v0, "content://org.abtollc.db/thread"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lorg/abtollc/api/SipMessage;->THREAD_URI:Landroid/net/Uri;

    .line 142
    const-string v0, "content://org.abtollc.db/thread/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lorg/abtollc/api/SipMessage;->THREAD_ID_URI_BASE:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 4
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    const/4 v1, -0x1

    iput v1, p0, Lorg/abtollc/api/SipMessage;->status:I

    .line 163
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/abtollc/api/SipMessage;->read:Z

    .line 164
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lorg/abtollc/api/SipMessage;->id:J

    .line 197
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 198
    .local v0, "args":Landroid/content/ContentValues;
    invoke-static {p1, v0}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 199
    invoke-virtual {p0, v0}, Lorg/abtollc/api/SipMessage;->createFromContentValue(Landroid/content/ContentValues;)V

    .line 200
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;)V
    .locals 2
    .param p1, "aForm"    # Ljava/lang/String;
    .param p2, "aTo"    # Ljava/lang/String;
    .param p3, "aContact"    # Ljava/lang/String;
    .param p4, "aBody"    # Ljava/lang/String;
    .param p5, "aMimeType"    # Ljava/lang/String;
    .param p6, "aDate"    # J
    .param p8, "aType"    # I
    .param p9, "aFullFrom"    # Ljava/lang/String;

    .prologue
    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    const/4 v0, -0x1

    iput v0, p0, Lorg/abtollc/api/SipMessage;->status:I

    .line 163
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/abtollc/api/SipMessage;->read:Z

    .line 164
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/abtollc/api/SipMessage;->id:J

    .line 180
    iput-object p1, p0, Lorg/abtollc/api/SipMessage;->from:Ljava/lang/String;

    .line 181
    iput-object p2, p0, Lorg/abtollc/api/SipMessage;->to:Ljava/lang/String;

    .line 182
    iput-object p3, p0, Lorg/abtollc/api/SipMessage;->contact:Ljava/lang/String;

    .line 183
    iput-object p4, p0, Lorg/abtollc/api/SipMessage;->body:Ljava/lang/String;

    .line 184
    iput-object p5, p0, Lorg/abtollc/api/SipMessage;->mimeType:Ljava/lang/String;

    .line 185
    iput-wide p6, p0, Lorg/abtollc/api/SipMessage;->date:J

    .line 186
    iput p8, p0, Lorg/abtollc/api/SipMessage;->type:I

    .line 187
    iput-object p9, p0, Lorg/abtollc/api/SipMessage;->fullFrom:Ljava/lang/String;

    .line 188
    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 15
    check-cast p1, Lorg/abtollc/api/SipMessage;

    invoke-virtual {p0, p1}, Lorg/abtollc/api/SipMessage;->compareTo(Lorg/abtollc/api/SipMessage;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/abtollc/api/SipMessage;)I
    .locals 4
    .param p1, "another"    # Lorg/abtollc/api/SipMessage;

    .prologue
    .line 451
    iget-wide v0, p0, Lorg/abtollc/api/SipMessage;->date:J

    invoke-virtual {p1}, Lorg/abtollc/api/SipMessage;->getDate()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public final createFromContentValue(Landroid/content/ContentValues;)V
    .locals 6
    .param p1, "args"    # Landroid/content/ContentValues;

    .prologue
    .line 228
    const-string v4, "sender"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 229
    .local v3, "tmp_s":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 230
    iput-object v3, p0, Lorg/abtollc/api/SipMessage;->from:Ljava/lang/String;

    .line 232
    :cond_0
    const-string v4, "receiver"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 233
    if-eqz v3, :cond_1

    .line 234
    iput-object v3, p0, Lorg/abtollc/api/SipMessage;->to:Ljava/lang/String;

    .line 236
    :cond_1
    const-string v4, "contact"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 237
    if-eqz v3, :cond_2

    .line 238
    iput-object v3, p0, Lorg/abtollc/api/SipMessage;->contact:Ljava/lang/String;

    .line 240
    :cond_2
    const-string v4, "body"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 241
    if-eqz v3, :cond_3

    .line 242
    iput-object v3, p0, Lorg/abtollc/api/SipMessage;->body:Ljava/lang/String;

    .line 244
    :cond_3
    const-string v4, "mime_type"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 245
    if-eqz v3, :cond_4

    .line 246
    iput-object v3, p0, Lorg/abtollc/api/SipMessage;->mimeType:Ljava/lang/String;

    .line 248
    :cond_4
    const-string v4, "date"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    .line 249
    .local v2, "tmp_l":Ljava/lang/Long;
    if-eqz v2, :cond_5

    .line 250
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, p0, Lorg/abtollc/api/SipMessage;->date:J

    .line 252
    :cond_5
    const-string v4, "type"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 253
    .local v1, "tmp_i":Ljava/lang/Integer;
    if-eqz v1, :cond_6

    .line 254
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p0, Lorg/abtollc/api/SipMessage;->type:I

    .line 256
    :cond_6
    const-string v4, "status"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 257
    if-eqz v1, :cond_7

    .line 258
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p0, Lorg/abtollc/api/SipMessage;->status:I

    .line 260
    :cond_7
    const-string v4, "read"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 261
    .local v0, "tmp_b":Ljava/lang/Integer;
    if-eqz v0, :cond_8

    .line 262
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_b

    const/4 v4, 0x1

    :goto_0
    iput-boolean v4, p0, Lorg/abtollc/api/SipMessage;->read:Z

    .line 265
    :cond_8
    const-string v4, "full_sender"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 266
    if-eqz v3, :cond_9

    .line 267
    iput-object v3, p0, Lorg/abtollc/api/SipMessage;->fullFrom:Ljava/lang/String;

    .line 270
    :cond_9
    const-string v4, "id"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    .line 271
    if-eqz v2, :cond_a

    .line 272
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, p0, Lorg/abtollc/api/SipMessage;->id:J

    .line 274
    :cond_a
    return-void

    .line 262
    :cond_b
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public getBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lorg/abtollc/api/SipMessage;->body:Ljava/lang/String;

    return-object v0
.end method

.method public getBodyContent()Ljava/lang/String;
    .locals 3

    .prologue
    .line 360
    iget-object v1, p0, Lorg/abtollc/api/SipMessage;->body:Ljava/lang/String;

    const-string v2, " // "

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 361
    .local v0, "splitIndex":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 362
    iget-object v1, p0, Lorg/abtollc/api/SipMessage;->body:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 364
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lorg/abtollc/api/SipMessage;->body:Ljava/lang/String;

    goto :goto_0
.end method

.method public getContentValues()Landroid/content/ContentValues;
    .locals 4

    .prologue
    .line 208
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 209
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v1, "sender"

    iget-object v2, p0, Lorg/abtollc/api/SipMessage;->from:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    const-string v1, "receiver"

    iget-object v2, p0, Lorg/abtollc/api/SipMessage;->to:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    const-string v1, "contact"

    iget-object v2, p0, Lorg/abtollc/api/SipMessage;->contact:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    const-string v1, "body"

    iget-object v2, p0, Lorg/abtollc/api/SipMessage;->body:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    const-string v1, "mime_type"

    iget-object v2, p0, Lorg/abtollc/api/SipMessage;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    const-string v1, "type"

    iget v2, p0, Lorg/abtollc/api/SipMessage;->type:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 215
    const-string v1, "date"

    iget-wide v2, p0, Lorg/abtollc/api/SipMessage;->date:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 216
    const-string v1, "status"

    iget v2, p0, Lorg/abtollc/api/SipMessage;->status:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 217
    const-string v1, "read"

    iget-boolean v2, p0, Lorg/abtollc/api/SipMessage;->read:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 218
    const-string v1, "full_sender"

    iget-object v2, p0, Lorg/abtollc/api/SipMessage;->fullFrom:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    return-object v0
.end method

.method public getDate()J
    .locals 2

    .prologue
    .line 405
    iget-wide v0, p0, Lorg/abtollc/api/SipMessage;->date:J

    return-wide v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lorg/abtollc/api/SipMessage;->fullFrom:Ljava/lang/String;

    invoke-static {v0}, Lorg/abtollc/api/SipUri;->getDisplayedSimpleContact(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getErrorContent()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, -0x1

    .line 373
    iget v2, p0, Lorg/abtollc/api/SipMessage;->status:I

    if-eq v2, v4, :cond_0

    iget v2, p0, Lorg/abtollc/api/SipMessage;->status:I

    const/16 v3, 0xc8

    if-eq v2, v3, :cond_0

    iget v2, p0, Lorg/abtollc/api/SipMessage;->status:I

    const/16 v3, 0xca

    if-ne v2, v3, :cond_1

    .line 383
    :cond_0
    :goto_0
    return-object v1

    .line 379
    :cond_1
    iget-object v2, p0, Lorg/abtollc/api/SipMessage;->body:Ljava/lang/String;

    const-string v3, " // "

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 380
    .local v0, "splitIndex":I
    if-eq v0, v4, :cond_0

    .line 381
    iget-object v1, p0, Lorg/abtollc/api/SipMessage;->body:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x4

    iget-object v3, p0, Lorg/abtollc/api/SipMessage;->body:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getFrom()Ljava/lang/String;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lorg/abtollc/api/SipMessage;->from:Ljava/lang/String;

    return-object v0
.end method

.method public getFullFrom()Ljava/lang/String;
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Lorg/abtollc/api/SipMessage;->fullFrom:Ljava/lang/String;

    return-object v0
.end method

.method public getFullTo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lorg/abtollc/api/SipMessage;->contact:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 277
    iget-wide v0, p0, Lorg/abtollc/api/SipMessage;->id:J

    return-wide v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lorg/abtollc/api/SipMessage;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getRemoteNumber()Ljava/lang/String;
    .locals 2

    .prologue
    .line 347
    const-string v0, "SELF"

    iget-object v1, p0, Lorg/abtollc/api/SipMessage;->from:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lorg/abtollc/api/SipMessage;->contact:Ljava/lang/String;

    .line 350
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/abtollc/api/SipMessage;->from:Ljava/lang/String;

    goto :goto_0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 446
    iget v0, p0, Lorg/abtollc/api/SipMessage;->status:I

    return v0
.end method

.method public getTo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lorg/abtollc/api/SipMessage;->to:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 428
    iget v0, p0, Lorg/abtollc/api/SipMessage;->type:I

    return v0
.end method

.method public isOutgoing()Z
    .locals 2

    .prologue
    .line 392
    const-string v0, "SELF"

    iget-object v1, p0, Lorg/abtollc/api/SipMessage;->from:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 393
    const/4 v0, 0x1

    .line 395
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRead()Z
    .locals 1

    .prologue
    .line 329
    iget-boolean v0, p0, Lorg/abtollc/api/SipMessage;->read:Z

    return v0
.end method

.method public setId(J)V
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 281
    iput-wide p1, p0, Lorg/abtollc/api/SipMessage;->id:J

    .line 282
    return-void
.end method

.method public setRead(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 321
    iput-boolean p1, p0, Lorg/abtollc/api/SipMessage;->read:Z

    .line 323
    return-void
.end method
