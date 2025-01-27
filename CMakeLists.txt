cmake_minimum_required(VERSION 3.30)
project(cossacks3_lan_server)

set(CMAKE_CXX_STANDARD 14)

include_directories(asio/asio/include)
include_directories(asio/asio/include/asio)
include_directories(asio/asio/include/asio/detail)
include_directories(asio/asio/include/asio/detail/impl)
include_directories(asio/asio/include/asio/execution)
include_directories(asio/asio/include/asio/execution/impl)
include_directories(asio/asio/include/asio/experimental)
include_directories(asio/asio/include/asio/experimental/detail)
include_directories(asio/asio/include/asio/experimental/detail/impl)
include_directories(asio/asio/include/asio/experimental/impl)
include_directories(asio/asio/include/asio/generic)
include_directories(asio/asio/include/asio/generic/detail)
include_directories(asio/asio/include/asio/generic/detail/impl)
include_directories(asio/asio/include/asio/impl)
include_directories(asio/asio/include/asio/ip)
include_directories(asio/asio/include/asio/ip/detail)
include_directories(asio/asio/include/asio/ip/detail/impl)
include_directories(asio/asio/include/asio/ip/impl)
include_directories(asio/asio/include/asio/local)
include_directories(asio/asio/include/asio/local/detail)
include_directories(asio/asio/include/asio/local/detail/impl)
include_directories(asio/asio/include/asio/posix)
include_directories(asio/asio/include/asio/ssl)
include_directories(asio/asio/include/asio/ssl/detail)
include_directories(asio/asio/include/asio/ssl/detail/impl)
include_directories(asio/asio/include/asio/ssl/impl)
include_directories(asio/asio/include/asio/traits)
include_directories(asio/asio/include/asio/ts)
include_directories(asio/asio/include/asio/windows)
include_directories(src)

add_executable(cossacks3_lan_server
        asio/asio/include/asio/detail/impl/buffer_sequence_adapter.ipp
        asio/asio/include/asio/detail/impl/descriptor_ops.ipp
        asio/asio/include/asio/detail/impl/dev_poll_reactor.hpp
        asio/asio/include/asio/detail/impl/dev_poll_reactor.ipp
        asio/asio/include/asio/detail/impl/epoll_reactor.hpp
        asio/asio/include/asio/detail/impl/epoll_reactor.ipp
        asio/asio/include/asio/detail/impl/eventfd_select_interrupter.ipp
        asio/asio/include/asio/detail/impl/handler_tracking.ipp
        asio/asio/include/asio/detail/impl/io_uring_descriptor_service.ipp
        asio/asio/include/asio/detail/impl/io_uring_file_service.ipp
        asio/asio/include/asio/detail/impl/io_uring_service.hpp
        asio/asio/include/asio/detail/impl/io_uring_service.ipp
        asio/asio/include/asio/detail/impl/io_uring_socket_service_base.ipp
        asio/asio/include/asio/detail/impl/kqueue_reactor.hpp
        asio/asio/include/asio/detail/impl/kqueue_reactor.ipp
        asio/asio/include/asio/detail/impl/null_event.ipp
        asio/asio/include/asio/detail/impl/pipe_select_interrupter.ipp
        asio/asio/include/asio/detail/impl/posix_event.ipp
        asio/asio/include/asio/detail/impl/posix_mutex.ipp
        asio/asio/include/asio/detail/impl/posix_serial_port_service.ipp
        asio/asio/include/asio/detail/impl/posix_thread.ipp
        asio/asio/include/asio/detail/impl/posix_tss_ptr.ipp
        asio/asio/include/asio/detail/impl/reactive_descriptor_service.ipp
        asio/asio/include/asio/detail/impl/reactive_socket_service_base.ipp
        asio/asio/include/asio/detail/impl/resolver_service_base.ipp
        asio/asio/include/asio/detail/impl/scheduler.ipp
        asio/asio/include/asio/detail/impl/select_reactor.hpp
        asio/asio/include/asio/detail/impl/select_reactor.ipp
        asio/asio/include/asio/detail/impl/service_registry.hpp
        asio/asio/include/asio/detail/impl/service_registry.ipp
        asio/asio/include/asio/detail/impl/signal_set_service.ipp
        asio/asio/include/asio/detail/impl/socket_ops.ipp
        asio/asio/include/asio/detail/impl/socket_select_interrupter.ipp
        asio/asio/include/asio/detail/impl/strand_executor_service.hpp
        asio/asio/include/asio/detail/impl/strand_executor_service.ipp
        asio/asio/include/asio/detail/impl/strand_service.hpp
        asio/asio/include/asio/detail/impl/strand_service.ipp
        asio/asio/include/asio/detail/impl/thread_context.ipp
        asio/asio/include/asio/detail/impl/throw_error.ipp
        asio/asio/include/asio/detail/impl/timer_queue_ptime.ipp
        asio/asio/include/asio/detail/impl/timer_queue_set.ipp
        asio/asio/include/asio/detail/impl/win_event.ipp
        asio/asio/include/asio/detail/impl/win_iocp_file_service.ipp
        asio/asio/include/asio/detail/impl/win_iocp_handle_service.ipp
        asio/asio/include/asio/detail/impl/win_iocp_io_context.hpp
        asio/asio/include/asio/detail/impl/win_iocp_io_context.ipp
        asio/asio/include/asio/detail/impl/win_iocp_serial_port_service.ipp
        asio/asio/include/asio/detail/impl/win_iocp_socket_service_base.ipp
        asio/asio/include/asio/detail/impl/win_mutex.ipp
        asio/asio/include/asio/detail/impl/win_object_handle_service.ipp
        asio/asio/include/asio/detail/impl/win_static_mutex.ipp
        asio/asio/include/asio/detail/impl/win_thread.ipp
        asio/asio/include/asio/detail/impl/win_tss_ptr.ipp
        asio/asio/include/asio/detail/impl/winrt_ssocket_service_base.ipp
        asio/asio/include/asio/detail/impl/winrt_timer_scheduler.hpp
        asio/asio/include/asio/detail/impl/winrt_timer_scheduler.ipp
        asio/asio/include/asio/detail/impl/winsock_init.ipp
        asio/asio/include/asio/detail/array.hpp
        asio/asio/include/asio/detail/array_fwd.hpp
        asio/asio/include/asio/detail/assert.hpp
        asio/asio/include/asio/detail/atomic_count.hpp
        asio/asio/include/asio/detail/base_from_cancellation_state.hpp
        asio/asio/include/asio/detail/base_from_completion_cond.hpp
        asio/asio/include/asio/detail/bind_handler.hpp
        asio/asio/include/asio/detail/blocking_executor_op.hpp
        asio/asio/include/asio/detail/buffer_resize_guard.hpp
        asio/asio/include/asio/detail/buffer_sequence_adapter.hpp
        asio/asio/include/asio/detail/buffered_stream_storage.hpp
        asio/asio/include/asio/detail/call_stack.hpp
        asio/asio/include/asio/detail/chrono.hpp
        asio/asio/include/asio/detail/chrono_time_traits.hpp
        asio/asio/include/asio/detail/completion_handler.hpp
        asio/asio/include/asio/detail/completion_message.hpp
        asio/asio/include/asio/detail/completion_payload.hpp
        asio/asio/include/asio/detail/completion_payload_handler.hpp
        asio/asio/include/asio/detail/composed_work.hpp
        asio/asio/include/asio/detail/concurrency_hint.hpp
        asio/asio/include/asio/detail/conditionally_enabled_event.hpp
        asio/asio/include/asio/detail/conditionally_enabled_mutex.hpp
        asio/asio/include/asio/detail/config.hpp
        asio/asio/include/asio/detail/consuming_buffers.hpp
        asio/asio/include/asio/detail/cstddef.hpp
        asio/asio/include/asio/detail/cstdint.hpp
        asio/asio/include/asio/detail/date_time_fwd.hpp
        asio/asio/include/asio/detail/deadline_timer_service.hpp
        asio/asio/include/asio/detail/dependent_type.hpp
        asio/asio/include/asio/detail/descriptor_ops.hpp
        asio/asio/include/asio/detail/descriptor_read_op.hpp
        asio/asio/include/asio/detail/descriptor_write_op.hpp
        asio/asio/include/asio/detail/dev_poll_reactor.hpp
        asio/asio/include/asio/detail/epoll_reactor.hpp
        asio/asio/include/asio/detail/event.hpp
        asio/asio/include/asio/detail/eventfd_select_interrupter.hpp
        asio/asio/include/asio/detail/exception.hpp
        asio/asio/include/asio/detail/executor_function.hpp
        asio/asio/include/asio/detail/executor_op.hpp
        asio/asio/include/asio/detail/fd_set_adapter.hpp
        asio/asio/include/asio/detail/fenced_block.hpp
        asio/asio/include/asio/detail/functional.hpp
        asio/asio/include/asio/detail/future.hpp
        asio/asio/include/asio/detail/global.hpp
        asio/asio/include/asio/detail/handler_alloc_helpers.hpp
        asio/asio/include/asio/detail/handler_cont_helpers.hpp
        asio/asio/include/asio/detail/handler_tracking.hpp
        asio/asio/include/asio/detail/handler_type_requirements.hpp
        asio/asio/include/asio/detail/handler_work.hpp
        asio/asio/include/asio/detail/hash_map.hpp
        asio/asio/include/asio/detail/initiate_defer.hpp
        asio/asio/include/asio/detail/initiate_dispatch.hpp
        asio/asio/include/asio/detail/initiate_post.hpp
        asio/asio/include/asio/detail/initiation_base.hpp
        asio/asio/include/asio/detail/io_control.hpp
        asio/asio/include/asio/detail/io_object_impl.hpp
        asio/asio/include/asio/detail/io_uring_descriptor_read_at_op.hpp
        asio/asio/include/asio/detail/io_uring_descriptor_read_op.hpp
        asio/asio/include/asio/detail/io_uring_descriptor_service.hpp
        asio/asio/include/asio/detail/io_uring_descriptor_write_at_op.hpp
        asio/asio/include/asio/detail/io_uring_descriptor_write_op.hpp
        asio/asio/include/asio/detail/io_uring_file_service.hpp
        asio/asio/include/asio/detail/io_uring_null_buffers_op.hpp
        asio/asio/include/asio/detail/io_uring_operation.hpp
        asio/asio/include/asio/detail/io_uring_service.hpp
        asio/asio/include/asio/detail/io_uring_socket_accept_op.hpp
        asio/asio/include/asio/detail/io_uring_socket_connect_op.hpp
        asio/asio/include/asio/detail/io_uring_socket_recv_op.hpp
        asio/asio/include/asio/detail/io_uring_socket_recvfrom_op.hpp
        asio/asio/include/asio/detail/io_uring_socket_recvmsg_op.hpp
        asio/asio/include/asio/detail/io_uring_socket_send_op.hpp
        asio/asio/include/asio/detail/io_uring_socket_sendto_op.hpp
        asio/asio/include/asio/detail/io_uring_socket_service.hpp
        asio/asio/include/asio/detail/io_uring_socket_service_base.hpp
        asio/asio/include/asio/detail/io_uring_wait_op.hpp
        asio/asio/include/asio/detail/is_buffer_sequence.hpp
        asio/asio/include/asio/detail/is_executor.hpp
        asio/asio/include/asio/detail/keyword_tss_ptr.hpp
        asio/asio/include/asio/detail/kqueue_reactor.hpp
        asio/asio/include/asio/detail/limits.hpp
        asio/asio/include/asio/detail/local_free_on_block_exit.hpp
        asio/asio/include/asio/detail/memory.hpp
        asio/asio/include/asio/detail/mutex.hpp
        asio/asio/include/asio/detail/non_const_lvalue.hpp
        asio/asio/include/asio/detail/noncopyable.hpp
        asio/asio/include/asio/detail/null_event.hpp
        asio/asio/include/asio/detail/null_fenced_block.hpp
        asio/asio/include/asio/detail/null_global.hpp
        asio/asio/include/asio/detail/null_mutex.hpp
        asio/asio/include/asio/detail/null_reactor.hpp
        asio/asio/include/asio/detail/null_signal_blocker.hpp
        asio/asio/include/asio/detail/null_socket_service.hpp
        asio/asio/include/asio/detail/null_static_mutex.hpp
        asio/asio/include/asio/detail/null_thread.hpp
        asio/asio/include/asio/detail/null_tss_ptr.hpp
        asio/asio/include/asio/detail/object_pool.hpp
        asio/asio/include/asio/detail/old_win_sdk_compat.hpp
        asio/asio/include/asio/detail/op_queue.hpp
        asio/asio/include/asio/detail/operation.hpp
        asio/asio/include/asio/detail/pipe_select_interrupter.hpp
        asio/asio/include/asio/detail/pop_options.hpp
        asio/asio/include/asio/detail/posix_event.hpp
        asio/asio/include/asio/detail/posix_fd_set_adapter.hpp
        asio/asio/include/asio/detail/posix_global.hpp
        asio/asio/include/asio/detail/posix_mutex.hpp
        asio/asio/include/asio/detail/posix_serial_port_service.hpp
        asio/asio/include/asio/detail/posix_signal_blocker.hpp
        asio/asio/include/asio/detail/posix_static_mutex.hpp
        asio/asio/include/asio/detail/posix_thread.hpp
        asio/asio/include/asio/detail/posix_tss_ptr.hpp
        asio/asio/include/asio/detail/push_options.hpp
        asio/asio/include/asio/detail/reactive_descriptor_service.hpp
        asio/asio/include/asio/detail/reactive_null_buffers_op.hpp
        asio/asio/include/asio/detail/reactive_socket_accept_op.hpp
        asio/asio/include/asio/detail/reactive_socket_connect_op.hpp
        asio/asio/include/asio/detail/reactive_socket_recv_op.hpp
        asio/asio/include/asio/detail/reactive_socket_recvfrom_op.hpp
        asio/asio/include/asio/detail/reactive_socket_recvmsg_op.hpp
        asio/asio/include/asio/detail/reactive_socket_send_op.hpp
        asio/asio/include/asio/detail/reactive_socket_sendto_op.hpp
        asio/asio/include/asio/detail/reactive_socket_service.hpp
        asio/asio/include/asio/detail/reactive_socket_service_base.hpp
        asio/asio/include/asio/detail/reactive_wait_op.hpp
        asio/asio/include/asio/detail/reactor.hpp
        asio/asio/include/asio/detail/reactor_op.hpp
        asio/asio/include/asio/detail/reactor_op_queue.hpp
        asio/asio/include/asio/detail/recycling_allocator.hpp
        asio/asio/include/asio/detail/regex_fwd.hpp
        asio/asio/include/asio/detail/resolve_endpoint_op.hpp
        asio/asio/include/asio/detail/resolve_op.hpp
        asio/asio/include/asio/detail/resolve_query_op.hpp
        asio/asio/include/asio/detail/resolver_service.hpp
        asio/asio/include/asio/detail/resolver_service_base.hpp
        asio/asio/include/asio/detail/scheduler.hpp
        asio/asio/include/asio/detail/scheduler_operation.hpp
        asio/asio/include/asio/detail/scheduler_task.hpp
        asio/asio/include/asio/detail/scheduler_thread_info.hpp
        asio/asio/include/asio/detail/scoped_lock.hpp
        asio/asio/include/asio/detail/scoped_ptr.hpp
        asio/asio/include/asio/detail/select_interrupter.hpp
        asio/asio/include/asio/detail/select_reactor.hpp
        asio/asio/include/asio/detail/service_registry.hpp
        asio/asio/include/asio/detail/signal_blocker.hpp
        asio/asio/include/asio/detail/signal_handler.hpp
        asio/asio/include/asio/detail/signal_init.hpp
        asio/asio/include/asio/detail/signal_op.hpp
        asio/asio/include/asio/detail/signal_set_service.hpp
        asio/asio/include/asio/detail/socket_holder.hpp
        asio/asio/include/asio/detail/socket_ops.hpp
        asio/asio/include/asio/detail/socket_option.hpp
        asio/asio/include/asio/detail/socket_select_interrupter.hpp
        asio/asio/include/asio/detail/socket_types.hpp
        asio/asio/include/asio/detail/source_location.hpp
        asio/asio/include/asio/detail/static_mutex.hpp
        asio/asio/include/asio/detail/std_event.hpp
        asio/asio/include/asio/detail/std_fenced_block.hpp
        asio/asio/include/asio/detail/std_global.hpp
        asio/asio/include/asio/detail/std_mutex.hpp
        asio/asio/include/asio/detail/std_static_mutex.hpp
        asio/asio/include/asio/detail/std_thread.hpp
        asio/asio/include/asio/detail/strand_executor_service.hpp
        asio/asio/include/asio/detail/strand_service.hpp
        asio/asio/include/asio/detail/string_view.hpp
        asio/asio/include/asio/detail/thread.hpp
        asio/asio/include/asio/detail/thread_context.hpp
        asio/asio/include/asio/detail/thread_group.hpp
        asio/asio/include/asio/detail/thread_info_base.hpp
        asio/asio/include/asio/detail/throw_error.hpp
        asio/asio/include/asio/detail/throw_exception.hpp
        asio/asio/include/asio/detail/timed_cancel_op.hpp
        asio/asio/include/asio/detail/timer_queue.hpp
        asio/asio/include/asio/detail/timer_queue_base.hpp
        asio/asio/include/asio/detail/timer_queue_ptime.hpp
        asio/asio/include/asio/detail/timer_queue_set.hpp
        asio/asio/include/asio/detail/timer_scheduler.hpp
        asio/asio/include/asio/detail/timer_scheduler_fwd.hpp
        asio/asio/include/asio/detail/tss_ptr.hpp
        asio/asio/include/asio/detail/type_traits.hpp
        asio/asio/include/asio/detail/utility.hpp
        asio/asio/include/asio/detail/wait_handler.hpp
        asio/asio/include/asio/detail/wait_op.hpp
        asio/asio/include/asio/detail/win_event.hpp
        asio/asio/include/asio/detail/win_fd_set_adapter.hpp
        asio/asio/include/asio/detail/win_global.hpp
        asio/asio/include/asio/detail/win_iocp_file_service.hpp
        asio/asio/include/asio/detail/win_iocp_handle_read_op.hpp
        asio/asio/include/asio/detail/win_iocp_handle_service.hpp
        asio/asio/include/asio/detail/win_iocp_handle_write_op.hpp
        asio/asio/include/asio/detail/win_iocp_io_context.hpp
        asio/asio/include/asio/detail/win_iocp_null_buffers_op.hpp
        asio/asio/include/asio/detail/win_iocp_operation.hpp
        asio/asio/include/asio/detail/win_iocp_overlapped_op.hpp
        asio/asio/include/asio/detail/win_iocp_overlapped_ptr.hpp
        asio/asio/include/asio/detail/win_iocp_serial_port_service.hpp
        asio/asio/include/asio/detail/win_iocp_socket_accept_op.hpp
        asio/asio/include/asio/detail/win_iocp_socket_connect_op.hpp
        asio/asio/include/asio/detail/win_iocp_socket_recv_op.hpp
        asio/asio/include/asio/detail/win_iocp_socket_recvfrom_op.hpp
        asio/asio/include/asio/detail/win_iocp_socket_recvmsg_op.hpp
        asio/asio/include/asio/detail/win_iocp_socket_send_op.hpp
        asio/asio/include/asio/detail/win_iocp_socket_service.hpp
        asio/asio/include/asio/detail/win_iocp_socket_service_base.hpp
        asio/asio/include/asio/detail/win_iocp_thread_info.hpp
        asio/asio/include/asio/detail/win_iocp_wait_op.hpp
        asio/asio/include/asio/detail/win_mutex.hpp
        asio/asio/include/asio/detail/win_object_handle_service.hpp
        asio/asio/include/asio/detail/win_static_mutex.hpp
        asio/asio/include/asio/detail/win_thread.hpp
        asio/asio/include/asio/detail/win_tss_ptr.hpp
        asio/asio/include/asio/detail/winapp_thread.hpp
        asio/asio/include/asio/detail/wince_thread.hpp
        asio/asio/include/asio/detail/winrt_async_manager.hpp
        asio/asio/include/asio/detail/winrt_async_op.hpp
        asio/asio/include/asio/detail/winrt_resolve_op.hpp
        asio/asio/include/asio/detail/winrt_resolver_service.hpp
        asio/asio/include/asio/detail/winrt_socket_connect_op.hpp
        asio/asio/include/asio/detail/winrt_socket_recv_op.hpp
        asio/asio/include/asio/detail/winrt_socket_send_op.hpp
        asio/asio/include/asio/detail/winrt_ssocket_service.hpp
        asio/asio/include/asio/detail/winrt_ssocket_service_base.hpp
        asio/asio/include/asio/detail/winrt_timer_scheduler.hpp
        asio/asio/include/asio/detail/winrt_utils.hpp
        asio/asio/include/asio/detail/winsock_init.hpp
        asio/asio/include/asio/detail/work_dispatcher.hpp
        asio/asio/include/asio/detail/wrapped_handler.hpp
        asio/asio/include/asio/execution/impl/bad_executor.ipp
        asio/asio/include/asio/execution/allocator.hpp
        asio/asio/include/asio/execution/any_executor.hpp
        asio/asio/include/asio/execution/bad_executor.hpp
        asio/asio/include/asio/execution/blocking.hpp
        asio/asio/include/asio/execution/blocking_adaptation.hpp
        asio/asio/include/asio/execution/context.hpp
        asio/asio/include/asio/execution/context_as.hpp
        asio/asio/include/asio/execution/executor.hpp
        asio/asio/include/asio/execution/invocable_archetype.hpp
        asio/asio/include/asio/execution/mapping.hpp
        asio/asio/include/asio/execution/occupancy.hpp
        asio/asio/include/asio/execution/outstanding_work.hpp
        asio/asio/include/asio/execution/prefer_only.hpp
        asio/asio/include/asio/execution/relationship.hpp
        asio/asio/include/asio/experimental/detail/impl/channel_service.hpp
        asio/asio/include/asio/experimental/detail/channel_operation.hpp
        asio/asio/include/asio/experimental/detail/channel_receive_op.hpp
        asio/asio/include/asio/experimental/detail/channel_send_functions.hpp
        asio/asio/include/asio/experimental/detail/channel_send_op.hpp
        asio/asio/include/asio/experimental/detail/channel_service.hpp
        asio/asio/include/asio/experimental/detail/coro_completion_handler.hpp
        asio/asio/include/asio/experimental/detail/coro_promise_allocator.hpp
        asio/asio/include/asio/experimental/detail/has_signature.hpp
        asio/asio/include/asio/experimental/detail/partial_promise.hpp
        asio/asio/include/asio/experimental/impl/as_single.hpp
        asio/asio/include/asio/experimental/impl/channel_error.ipp
        asio/asio/include/asio/experimental/impl/coro.hpp
        asio/asio/include/asio/experimental/impl/parallel_group.hpp
        asio/asio/include/asio/experimental/impl/promise.hpp
        asio/asio/include/asio/experimental/impl/use_coro.hpp
        asio/asio/include/asio/experimental/impl/use_promise.hpp
        asio/asio/include/asio/experimental/as_single.hpp
        asio/asio/include/asio/experimental/awaitable_operators.hpp
        asio/asio/include/asio/experimental/basic_channel.hpp
        asio/asio/include/asio/experimental/basic_concurrent_channel.hpp
        asio/asio/include/asio/experimental/cancellation_condition.hpp
        asio/asio/include/asio/experimental/channel.hpp
        asio/asio/include/asio/experimental/channel_error.hpp
        asio/asio/include/asio/experimental/channel_traits.hpp
        asio/asio/include/asio/experimental/co_composed.hpp
        asio/asio/include/asio/experimental/co_spawn.hpp
        asio/asio/include/asio/experimental/concurrent_channel.hpp
        asio/asio/include/asio/experimental/coro.hpp
        asio/asio/include/asio/experimental/coro_traits.hpp
        asio/asio/include/asio/experimental/parallel_group.hpp
        asio/asio/include/asio/experimental/promise.hpp
        asio/asio/include/asio/experimental/use_coro.hpp
        asio/asio/include/asio/experimental/use_promise.hpp
        asio/asio/include/asio/generic/detail/impl/endpoint.ipp
        asio/asio/include/asio/generic/detail/endpoint.hpp
        asio/asio/include/asio/generic/basic_endpoint.hpp
        asio/asio/include/asio/generic/datagram_protocol.hpp
        asio/asio/include/asio/generic/raw_protocol.hpp
        asio/asio/include/asio/generic/seq_packet_protocol.hpp
        asio/asio/include/asio/generic/stream_protocol.hpp
        asio/asio/include/asio/impl/any_completion_executor.ipp
        asio/asio/include/asio/impl/any_io_executor.ipp
        asio/asio/include/asio/impl/append.hpp
        asio/asio/include/asio/impl/as_tuple.hpp
        asio/asio/include/asio/impl/awaitable.hpp
        asio/asio/include/asio/impl/buffered_read_stream.hpp
        asio/asio/include/asio/impl/buffered_write_stream.hpp
        asio/asio/include/asio/impl/cancel_after.hpp
        asio/asio/include/asio/impl/cancel_at.hpp
        asio/asio/include/asio/impl/cancellation_signal.ipp
        asio/asio/include/asio/impl/co_spawn.hpp
        asio/asio/include/asio/impl/config.hpp
        asio/asio/include/asio/impl/config.ipp
        asio/asio/include/asio/impl/connect.hpp
        asio/asio/include/asio/impl/connect_pipe.hpp
        asio/asio/include/asio/impl/connect_pipe.ipp
        asio/asio/include/asio/impl/consign.hpp
        asio/asio/include/asio/impl/deferred.hpp
        asio/asio/include/asio/impl/detached.hpp
        asio/asio/include/asio/impl/error.ipp
        asio/asio/include/asio/impl/error_code.ipp
        asio/asio/include/asio/impl/execution_context.hpp
        asio/asio/include/asio/impl/execution_context.ipp
        asio/asio/include/asio/impl/executor.hpp
        asio/asio/include/asio/impl/executor.ipp
        asio/asio/include/asio/impl/io_context.hpp
        asio/asio/include/asio/impl/io_context.ipp
        asio/asio/include/asio/impl/multiple_exceptions.ipp
        asio/asio/include/asio/impl/prepend.hpp
        asio/asio/include/asio/impl/read.hpp
        asio/asio/include/asio/impl/read_at.hpp
        asio/asio/include/asio/impl/read_until.hpp
        asio/asio/include/asio/impl/redirect_error.hpp
        asio/asio/include/asio/impl/serial_port_base.hpp
        asio/asio/include/asio/impl/serial_port_base.ipp
        asio/asio/include/asio/impl/spawn.hpp
        asio/asio/include/asio/impl/src.hpp
        asio/asio/include/asio/impl/system_context.hpp
        asio/asio/include/asio/impl/system_context.ipp
        asio/asio/include/asio/impl/system_executor.hpp
        asio/asio/include/asio/impl/thread_pool.hpp
        asio/asio/include/asio/impl/thread_pool.ipp
        asio/asio/include/asio/impl/use_awaitable.hpp
        asio/asio/include/asio/impl/use_future.hpp
        asio/asio/include/asio/impl/write.hpp
        asio/asio/include/asio/impl/write_at.hpp
        asio/asio/include/asio/ip/detail/impl/endpoint.ipp
        asio/asio/include/asio/ip/detail/endpoint.hpp
        asio/asio/include/asio/ip/detail/socket_option.hpp
        asio/asio/include/asio/ip/impl/address.hpp
        asio/asio/include/asio/ip/impl/address.ipp
        asio/asio/include/asio/ip/impl/address_v4.hpp
        asio/asio/include/asio/ip/impl/address_v4.ipp
        asio/asio/include/asio/ip/impl/address_v6.hpp
        asio/asio/include/asio/ip/impl/address_v6.ipp
        asio/asio/include/asio/ip/impl/basic_endpoint.hpp
        asio/asio/include/asio/ip/impl/host_name.ipp
        asio/asio/include/asio/ip/impl/network_v4.hpp
        asio/asio/include/asio/ip/impl/network_v4.ipp
        asio/asio/include/asio/ip/impl/network_v6.hpp
        asio/asio/include/asio/ip/impl/network_v6.ipp
        asio/asio/include/asio/ip/address.hpp
        asio/asio/include/asio/ip/address_v4.hpp
        asio/asio/include/asio/ip/address_v4_iterator.hpp
        asio/asio/include/asio/ip/address_v4_range.hpp
        asio/asio/include/asio/ip/address_v6.hpp
        asio/asio/include/asio/ip/address_v6_iterator.hpp
        asio/asio/include/asio/ip/address_v6_range.hpp
        asio/asio/include/asio/ip/bad_address_cast.hpp
        asio/asio/include/asio/ip/basic_endpoint.hpp
        asio/asio/include/asio/ip/basic_resolver.hpp
        asio/asio/include/asio/ip/basic_resolver_entry.hpp
        asio/asio/include/asio/ip/basic_resolver_iterator.hpp
        asio/asio/include/asio/ip/basic_resolver_query.hpp
        asio/asio/include/asio/ip/basic_resolver_results.hpp
        asio/asio/include/asio/ip/host_name.hpp
        asio/asio/include/asio/ip/icmp.hpp
        asio/asio/include/asio/ip/multicast.hpp
        asio/asio/include/asio/ip/network_v4.hpp
        asio/asio/include/asio/ip/network_v6.hpp
        asio/asio/include/asio/ip/resolver_base.hpp
        asio/asio/include/asio/ip/resolver_query_base.hpp
        asio/asio/include/asio/ip/tcp.hpp
        asio/asio/include/asio/ip/udp.hpp
        asio/asio/include/asio/ip/unicast.hpp
        asio/asio/include/asio/ip/v6_only.hpp
        asio/asio/include/asio/local/detail/impl/endpoint.ipp
        asio/asio/include/asio/local/detail/endpoint.hpp
        asio/asio/include/asio/local/basic_endpoint.hpp
        asio/asio/include/asio/local/connect_pair.hpp
        asio/asio/include/asio/local/datagram_protocol.hpp
        asio/asio/include/asio/local/seq_packet_protocol.hpp
        asio/asio/include/asio/local/stream_protocol.hpp
        asio/asio/include/asio/posix/basic_descriptor.hpp
        asio/asio/include/asio/posix/basic_stream_descriptor.hpp
        asio/asio/include/asio/posix/descriptor.hpp
        asio/asio/include/asio/posix/descriptor_base.hpp
        asio/asio/include/asio/posix/stream_descriptor.hpp
        asio/asio/include/asio/ssl/detail/impl/engine.ipp
        asio/asio/include/asio/ssl/detail/impl/openssl_init.ipp
        asio/asio/include/asio/ssl/detail/buffered_handshake_op.hpp
        asio/asio/include/asio/ssl/detail/engine.hpp
        asio/asio/include/asio/ssl/detail/handshake_op.hpp
        asio/asio/include/asio/ssl/detail/io.hpp
        asio/asio/include/asio/ssl/detail/openssl_init.hpp
        asio/asio/include/asio/ssl/detail/openssl_types.hpp
        asio/asio/include/asio/ssl/detail/password_callback.hpp
        asio/asio/include/asio/ssl/detail/read_op.hpp
        asio/asio/include/asio/ssl/detail/shutdown_op.hpp
        asio/asio/include/asio/ssl/detail/stream_core.hpp
        asio/asio/include/asio/ssl/detail/verify_callback.hpp
        asio/asio/include/asio/ssl/detail/write_op.hpp
        asio/asio/include/asio/ssl/impl/context.hpp
        asio/asio/include/asio/ssl/impl/context.ipp
        asio/asio/include/asio/ssl/impl/error.ipp
        asio/asio/include/asio/ssl/impl/host_name_verification.ipp
        asio/asio/include/asio/ssl/impl/src.hpp
        asio/asio/include/asio/ssl/context.hpp
        asio/asio/include/asio/ssl/context_base.hpp
        asio/asio/include/asio/ssl/error.hpp
        asio/asio/include/asio/ssl/host_name_verification.hpp
        asio/asio/include/asio/ssl/stream.hpp
        asio/asio/include/asio/ssl/stream_base.hpp
        asio/asio/include/asio/ssl/verify_context.hpp
        asio/asio/include/asio/ssl/verify_mode.hpp
        asio/asio/include/asio/traits/equality_comparable.hpp
        asio/asio/include/asio/traits/execute_member.hpp
        asio/asio/include/asio/traits/prefer_free.hpp
        asio/asio/include/asio/traits/prefer_member.hpp
        asio/asio/include/asio/traits/query_free.hpp
        asio/asio/include/asio/traits/query_member.hpp
        asio/asio/include/asio/traits/query_static_constexpr_member.hpp
        asio/asio/include/asio/traits/require_concept_free.hpp
        asio/asio/include/asio/traits/require_concept_member.hpp
        asio/asio/include/asio/traits/require_free.hpp
        asio/asio/include/asio/traits/require_member.hpp
        asio/asio/include/asio/traits/static_query.hpp
        asio/asio/include/asio/traits/static_require.hpp
        asio/asio/include/asio/traits/static_require_concept.hpp
        asio/asio/include/asio/ts/buffer.hpp
        asio/asio/include/asio/ts/executor.hpp
        asio/asio/include/asio/ts/internet.hpp
        asio/asio/include/asio/ts/io_context.hpp
        asio/asio/include/asio/ts/net.hpp
        asio/asio/include/asio/ts/netfwd.hpp
        asio/asio/include/asio/ts/socket.hpp
        asio/asio/include/asio/ts/timer.hpp
        asio/asio/include/asio/windows/basic_object_handle.hpp
        asio/asio/include/asio/windows/basic_overlapped_handle.hpp
        asio/asio/include/asio/windows/basic_random_access_handle.hpp
        asio/asio/include/asio/windows/basic_stream_handle.hpp
        asio/asio/include/asio/windows/object_handle.hpp
        asio/asio/include/asio/windows/overlapped_handle.hpp
        asio/asio/include/asio/windows/overlapped_ptr.hpp
        asio/asio/include/asio/windows/random_access_handle.hpp
        asio/asio/include/asio/windows/stream_handle.hpp
        asio/asio/include/asio/any_completion_executor.hpp
        asio/asio/include/asio/any_completion_handler.hpp
        asio/asio/include/asio/any_io_executor.hpp
        asio/asio/include/asio/append.hpp
        asio/asio/include/asio/as_tuple.hpp
        asio/asio/include/asio/associated_allocator.hpp
        asio/asio/include/asio/associated_cancellation_slot.hpp
        asio/asio/include/asio/associated_executor.hpp
        asio/asio/include/asio/associated_immediate_executor.hpp
        asio/asio/include/asio/associator.hpp
        asio/asio/include/asio/async_result.hpp
        asio/asio/include/asio/awaitable.hpp
        asio/asio/include/asio/basic_datagram_socket.hpp
        asio/asio/include/asio/basic_deadline_timer.hpp
        asio/asio/include/asio/basic_file.hpp
        asio/asio/include/asio/basic_io_object.hpp
        asio/asio/include/asio/basic_random_access_file.hpp
        asio/asio/include/asio/basic_raw_socket.hpp
        asio/asio/include/asio/basic_readable_pipe.hpp
        asio/asio/include/asio/basic_seq_packet_socket.hpp
        asio/asio/include/asio/basic_serial_port.hpp
        asio/asio/include/asio/basic_signal_set.hpp
        asio/asio/include/asio/basic_socket.hpp
        asio/asio/include/asio/basic_socket_acceptor.hpp
        asio/asio/include/asio/basic_socket_iostream.hpp
        asio/asio/include/asio/basic_socket_streambuf.hpp
        asio/asio/include/asio/basic_stream_file.hpp
        asio/asio/include/asio/basic_stream_socket.hpp
        asio/asio/include/asio/basic_streambuf.hpp
        asio/asio/include/asio/basic_streambuf_fwd.hpp
        asio/asio/include/asio/basic_waitable_timer.hpp
        asio/asio/include/asio/basic_writable_pipe.hpp
        asio/asio/include/asio/bind_allocator.hpp
        asio/asio/include/asio/bind_cancellation_slot.hpp
        asio/asio/include/asio/bind_executor.hpp
        asio/asio/include/asio/bind_immediate_executor.hpp
        asio/asio/include/asio/buffer.hpp
        asio/asio/include/asio/buffer_registration.hpp
        asio/asio/include/asio/buffered_read_stream.hpp
        asio/asio/include/asio/buffered_read_stream_fwd.hpp
        asio/asio/include/asio/buffered_stream.hpp
        asio/asio/include/asio/buffered_stream_fwd.hpp
        asio/asio/include/asio/buffered_write_stream.hpp
        asio/asio/include/asio/buffered_write_stream_fwd.hpp
        asio/asio/include/asio/buffers_iterator.hpp
        asio/asio/include/asio/cancel_after.hpp
        asio/asio/include/asio/cancel_at.hpp
        asio/asio/include/asio/cancellation_signal.hpp
        asio/asio/include/asio/cancellation_state.hpp
        asio/asio/include/asio/cancellation_type.hpp
        asio/asio/include/asio/co_composed.hpp
        asio/asio/include/asio/co_spawn.hpp
        asio/asio/include/asio/completion_condition.hpp
        asio/asio/include/asio/compose.hpp
        asio/asio/include/asio/composed.hpp
        asio/asio/include/asio/config.hpp
        asio/asio/include/asio/connect.hpp
        asio/asio/include/asio/connect_pipe.hpp
        asio/asio/include/asio/consign.hpp
        asio/asio/include/asio/coroutine.hpp
        asio/asio/include/asio/deadline_timer.hpp
        asio/asio/include/asio/default_completion_token.hpp
        asio/asio/include/asio/defer.hpp
        asio/asio/include/asio/deferred.hpp
        asio/asio/include/asio/detached.hpp
        asio/asio/include/asio/dispatch.hpp
        asio/asio/include/asio/disposition.hpp
        asio/asio/include/asio/error.hpp
        asio/asio/include/asio/error_code.hpp
        asio/asio/include/asio/execution.hpp
        asio/asio/include/asio/execution_context.hpp
        asio/asio/include/asio/executor.hpp
        asio/asio/include/asio/executor_work_guard.hpp
        asio/asio/include/asio/file_base.hpp
        asio/asio/include/asio/handler_continuation_hook.hpp
        asio/asio/include/asio/high_resolution_timer.hpp
        asio/asio/include/asio/immediate.hpp
        asio/asio/include/asio/io_context.hpp
        asio/asio/include/asio/io_context_strand.hpp
        asio/asio/include/asio/is_applicable_property.hpp
        asio/asio/include/asio/is_contiguous_iterator.hpp
        asio/asio/include/asio/is_executor.hpp
        asio/asio/include/asio/is_read_buffered.hpp
        asio/asio/include/asio/is_write_buffered.hpp
        asio/asio/include/asio/multiple_exceptions.hpp
        asio/asio/include/asio/packaged_task.hpp
        asio/asio/include/asio/placeholders.hpp
        asio/asio/include/asio/post.hpp
        asio/asio/include/asio/prefer.hpp
        asio/asio/include/asio/prepend.hpp
        asio/asio/include/asio/query.hpp
        asio/asio/include/asio/random_access_file.hpp
        asio/asio/include/asio/read.hpp
        asio/asio/include/asio/read_at.hpp
        asio/asio/include/asio/read_until.hpp
        asio/asio/include/asio/readable_pipe.hpp
        asio/asio/include/asio/recycling_allocator.hpp
        asio/asio/include/asio/redirect_error.hpp
        asio/asio/include/asio/registered_buffer.hpp
        asio/asio/include/asio/require.hpp
        asio/asio/include/asio/require_concept.hpp
        asio/asio/include/asio/serial_port.hpp
        asio/asio/include/asio/serial_port_base.hpp
        asio/asio/include/asio/signal_set.hpp
        asio/asio/include/asio/signal_set_base.hpp
        asio/asio/include/asio/socket_base.hpp
        asio/asio/include/asio/spawn.hpp
        asio/asio/include/asio/ssl.hpp
        asio/asio/include/asio/static_thread_pool.hpp
        asio/asio/include/asio/steady_timer.hpp
        asio/asio/include/asio/strand.hpp
        asio/asio/include/asio/stream_file.hpp
        asio/asio/include/asio/streambuf.hpp
        asio/asio/include/asio/system_context.hpp
        asio/asio/include/asio/system_error.hpp
        asio/asio/include/asio/system_executor.hpp
        asio/asio/include/asio/system_timer.hpp
        asio/asio/include/asio/this_coro.hpp
        asio/asio/include/asio/thread.hpp
        asio/asio/include/asio/thread_pool.hpp
        asio/asio/include/asio/time_traits.hpp
        asio/asio/include/asio/unyield.hpp
        asio/asio/include/asio/use_awaitable.hpp
        asio/asio/include/asio/use_future.hpp
        asio/asio/include/asio/uses_executor.hpp
        asio/asio/include/asio/version.hpp
        asio/asio/include/asio/wait_traits.hpp
        asio/asio/include/asio/writable_pipe.hpp
        asio/asio/include/asio/write.hpp
        asio/asio/include/asio/write_at.hpp
        asio/asio/include/asio/yield.hpp
        asio/asio/include/asio.hpp
        asio/asio/include/Makefile.am
        src/Client.hpp
        src/Cossacks3LanServer.cpp
        src/Lobby.cpp
        src/Lobby.hpp
        src/Packet.cpp
        src/Packet.hpp
        src/Player.cpp
        src/Player.hpp
        src/Precompiled.hpp
        src/Room.hpp
        src/Server.cpp
        src/Server.hpp
        src/Session.cpp
        src/Session.hpp
        src/Trace.hpp)
