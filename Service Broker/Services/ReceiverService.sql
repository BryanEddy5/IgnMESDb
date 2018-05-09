CREATE SERVICE [ReceiverService]
AUTHORIZATION [dbo]
ON QUEUE [dbo].[TargetQueue]
(
[SampleContract]
)
GO
GRANT SEND ON SERVICE:: [ReceiverService] TO [NCMIR_User]
GO
GRANT SEND ON SERVICE:: [ReceiverService] TO [public]
GO
